local khaoslib_item = require("__khaoslib__.prototypes.item")
local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")

if mods["khaosfoundry"] then
  khaoslib_recipe:load {
    type = "recipe",
    name = "vanadium-carbide-founding",
    localised_name = {"item-name.vanadium-carbide"},
    subgroup = "raw-material",
    order = "a[smelting]-dd[vanadium-carbide]",
    enabled = true,
    auto_recycle = false,
    allow_productivity = true,
    energy_required = 64/3,
    main_product = "vanadium-carbide",
  } :set_categories {"founding"}
    :set_icons(util.combine_icons({{icon = "__khaosvanadium__/graphics/icons/vanadium-carbide.png", icon_size = 64}}, khaoslib_item.get_icons("coke"), {scale = 0.5, shift = {8, -8}}, 64))
    :set_ingredients {
      {type = "item", name = "vanadium-plate", amount = 5},
      {type = "item", name = "coke", amount = 5},
    }
    :set_results {
      {type = "item", name = "vanadium-carbide", amount = 4},
    }
    :commit()
end
