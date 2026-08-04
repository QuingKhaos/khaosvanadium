local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")

khaoslib_recipe:load {
  type = "recipe",
  name = "vanadium-carbide",
  subgroup = "raw-material",
  order = "a[smelting]-dc[vanadium-carbide]",
  enabled = false,
  auto_recycle = false,
  allow_productivity = true,
  energy_required = 64/3,
  main_product = "vanadium-carbide",
} :set_categories {"smelting-burner"}
  :set_icons {{icon = "__khaosvanadium__/graphics/icons/vanadium-carbide.png", icon_size = 64}}
  :set_ingredients {
    {type = "item", name = "vanadium-plate", amount = 5},
  }
  :set_results {
    {type = "item", name = "vanadium-carbide", amount = 2},
  }
  :commit()
