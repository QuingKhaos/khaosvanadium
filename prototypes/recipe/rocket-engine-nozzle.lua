local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")

khaoslib_recipe:load {
  type = "recipe",
  name = "rocket-engine-nozzle",
  subgroup = "intermediate-product",
  order = "d[rocket-parts]-ba[rocket-engine-nozzle]",
  enabled = false,
  allow_productivity = true,
  energy_required = 5,
  main_product = "rocket-engine-nozzle",
} :set_categories {"crafting"}
  :set_icons {{icon = "__khaosvanadium__/graphics/icons/rocket-engine-nozzle.png", icon_size = 64}}
  :set_ingredients {
    {type = "item", name = "vanadium-plate", amount = 2},
  }
  :set_results {
    {type = "item", name = "rocket-engine-nozzle", amount = 1},
  }
  :add_unlock("rocketry")
  :commit()
