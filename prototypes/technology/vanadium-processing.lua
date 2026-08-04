local khaoslib_technology = require("__khaoslib__.prototypes.technology")

local tech = khaoslib_technology:load {
  type = "technology",
  name = "vanadium-processing",
  order = "b-b",
} :set_icons {{icon = "__khaosvanadium__/graphics/technology/vanadium-processing.png", icon_size = 256}}
  :set_prerequisites {"advanced-material-processing"}
  :set_unit {
    time = 30,
    count = 75,
    ingredients = {
      {"automation-science-pack", 1},
      {"logistic-science-pack", 1},
    },
  }
  :add_unlock_recipe("vanadium-plate")
  :add_unlock_recipe("vanadium-carbide")

if settings.startup["khaosvanadium-more"].value then
  tech:add_unlock_recipe("copper-vanadium-plate")
end

tech:commit()
