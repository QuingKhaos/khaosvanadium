require("__base__.prototypes.factoriopedia-util");
local khaoslib_entity = require('__khaoslib__.prototypes.entity')
local resource_autoplace = require('__core__.lualib.resource-autoplace')

data.raw["planet"]["nauvis"].map_gen_settings = util.merge {data.raw["planet"]["nauvis"].map_gen_settings, {
  autoplace_controls = {
    ["vanadium-ore"] = {},
  },
  autoplace_settings = {
    entity = {
      settings = {
        ["vanadium-ore"] = {},
      },
    },
  },
}}

resource_autoplace.initialize_patch_set("vanadium-ore", true)

data:extend {
  {
    type = "autoplace-control",
    name = "vanadium-ore",
    localised_name = {"", "[entity=vanadium-ore] ", {"entity-name.vanadium-ore"}},
    category = "resource",
    order = "a-bc",
    richness = true,
  },
}

local resource = khaoslib_entity:load {
  type = "resource",
  name = "vanadium-ore",
  flags = {"placeable-neutral"},
  order = "a-b-b",

  map_color = {r = 0.9, g = 0.9, b = 0.8},
  collision_box = {{-0.1, -0.1}, {0.1, 0.1}},
  selection_box = {{-0.5, -0.5}, {0.5, 0.5}},

  tree_removal_probability = 0.7,
  tree_removal_max_distance = 32 * 32,

  factoriopedia_simulation = {
    init = make_resource("vanadium-ore"),
  },

  autoplace = resource_autoplace.resource_autoplace_settings{
    name = "vanadium-ore",
    order = "b",
    base_density = 4,
    has_starting_area_placement = settings.startup["khaosvanadium-starting-patch"].value --[[@as boolean]],
    regular_rq_factor_multiplier = 1.2,
    starting_rq_factor_multiplier = 1.0,
  },

  stage_counts = {15000, 9500, 5500, 2900, 1300, 400, 150, 80},
  stages = {
    sheet = {
      filename = "__khaosvanadium__/graphics/entity/vanadium-ore/vanadium-ore.png",
      priority = "extra-high",
      size = 128,
      frame_count = 8,
      variation_count = 8,
      scale = 0.5,
    },
  },
} :set_icons {{icon = "__khaosvanadium__/graphics/icons/vanadium-ore.png", icon_size = 64}}
  :set_minable {
    hardness = 1,
    mining_time = 2,
    mining_particle = "vanadium-ore-particle",
    required_fluid = "water",
    fluid_amount = settings.startup["khaosvanadium-mining-fluid-amount"].value --[[@as double]],
    result = "vanadium-ore"
  }

-- Vanadium becomes 20% richer past 1000 tiles, 60% richer past 10000 tiles. Very close to start, it's 25% richness
local autoplace = resource:get().autoplace
if autoplace then
  resource:set {
    --- @diagnostic disable-next-line: missing-fields, assign-type-mismatch
    autoplace = {
      richness_expression = autoplace.richness_expression .. [[ *
        if(distance_from_nearest_point(x, y, starting_positions) < 100, 0.25,
          if(distance_from_nearest_point(x, y, starting_positions) < 1000, 1,
            if(distance_from_nearest_point(x, y, starting_positions) < 10000, 1.2, 1.6)))]],
    },
  }
end

resource:commit()
