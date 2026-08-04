local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")

if settings.startup["khaosvanadium-more"].value then
  khaoslib_recipe:load {
    type = "recipe",
    name = "copper-vanadium-plate",
    subgroup = "intermediate-product",
    order = "a[basic-intermediates]-bb[copper-vanadium-plate]",
    enabled = false,
    allow_productivity = true,
    energy_required = 80,
    main_product = "copper-vanadium-plate",
  } :set_categories {"crafting"}
    :set_icons {{icon = "__khaosvanadium__/graphics/icons/copper-vanadium-plate.png", icon_size = 64}}
    :set_ingredients {
      {type = "item", name = "vanadium-plate", amount = 15},
      {type = "item", name = "copper-plate", amount = 5},
    }
    :set_results {
      {type = "item", name = "copper-vanadium-plate", amount = 20},
    }
    :commit()
end
