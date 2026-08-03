local item_sounds = require('__base__.prototypes.item_sounds')
local khaoslib_item = require("__khaoslib__.prototypes.item")

khaoslib_item:load {
  type = "item",
  name = "vanadium-ore",
  localised_name = {"entity-name.vanadium-ore"},
  subgroup = "raw-resource",
  order = "fc[vanadium-ore]",
  stack_size = 50,
  weight = 20 * kg,

  inventory_move_sound = item_sounds.resource_inventory_move,
  pick_sound = item_sounds.resource_inventory_pickup,
  drop_sound = item_sounds.resource_inventory_move,

  pictures = {
    {filename = "__khaosvanadium__/graphics/icons/vanadium-ore.png", size = 64, scale = 0.5},
    {filename = "__khaosvanadium__/graphics/icons/vanadium-ore-1.png", size = 64, scale = 0.5},
    {filename = "__khaosvanadium__/graphics/icons/vanadium-ore-2.png", size = 64, scale = 0.5},
    {filename = "__khaosvanadium__/graphics/icons/vanadium-ore-3.png", size = 64, scale = 0.5},
  },
} :set_icons {{icon = "__khaosvanadium__/graphics/icons/vanadium-ore.png", icon_size = 64}}
  :commit()
