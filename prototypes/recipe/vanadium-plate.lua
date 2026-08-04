local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")

khaoslib_recipe:load {
  type = "recipe",
  name = "vanadium-plate",
  subgroup = "raw-material",
  order = "a[smelting]-dc[vanadium-plate]",
  enabled = true,
  auto_recycle = false,
  allow_productivity = true,
  energy_required = 32/15,
  main_product = "vanadium-plate",
} :set_categories {"smelting"}
  :set_icons{{icon = "__khaosvanadium__/graphics/icons/vanadium-plate.png", icon_size = 64}}
  :set_ingredients {
    {type = "item", name = "vanadium-ore", amount = 2},
  }
  :set_results {
    {type = "item", name = "vanadium-plate", amount = 1},
  }
  :commit()
