local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")
local khaoslib_technology = require("__khaoslib__.prototypes.technology")

if not mods["khaoscarbon"] then
  khaoslib_technology:load("advanced-material-processing"):add_effect {type = "mining-with-fluid", modifier = true} :commit()
end

khaoslib_technology:load("lamp"):add_prerequisite("vanadium-processing"):add_science_pack {"logistic-science-pack", 1} :commit()
khaoslib_recipe:load("small-lamp"):add_ingredient {type = "item", name = "vanadium-plate", amount = 1} :commit()

khaoslib_technology:load("automated-rail-transportation"):add_prerequisite("lamp"):commit()
khaoslib_recipe:load("rail-signal"):add_ingredient {type = "item", name = "small-lamp", amount = 1} :commit()
khaoslib_recipe:load("rail-chain-signal"):add_ingredient {type = "item", name = "small-lamp", amount = 1} :commit()

khaoslib_technology:load("military-2"):add_prerequisite("vanadium-processing"):commit()
khaoslib_recipe:load("piercing-rounds-magazine"):replace_ingredient("copper-plate", {type = "item", name = "vanadium-carbide", amount = 3}):commit()
khaoslib_recipe:load("piercing-shotgun-shell"):replace_ingredient("copper-plate", {type = "item", name = "vanadium-carbide", amount = 3}):commit()
khaoslib_recipe:load("cannon-shell"):replace_ingredient("copper-plate", function(ingredient) ingredient.name = "vanadium-carbide" return ingredient end):commit()

khaoslib_technology:load("automation-2"):add_prerequisite("vanadium-processing"):commit()
if mods["khaosaluminium"] or mods["khaoscarbon"] or mods["khaosgas"] then
  khaoslib_recipe:load("assembling-machine-2"):replace_ingredient("steel-plate", function(ingredient) ingredient.name = "vanadium-carbide" return ingredient end):commit()
else
  khaoslib_recipe:load("assembling-machine-2")
    :replace_ingredient("steel-plate", function(ingredient) ingredient.amount = math.max(1, ingredient.amount - 1) return ingredient end)
    :add_ingredient {type = "item", name = "vanadium-carbide", amount = 1}
    :commit()
end

khaoslib_recipe:load("assembling-machine-3"):add_ingredient {type = "item", name = "vanadium-carbide", amount = 4} :commit()
khaoslib_recipe:load("electric-furnace"):add_ingredient {type = "item", name = "vanadium-carbide", amount = 1} :commit()

khaoslib_technology:load("engine"):add_prerequisite("vanadium-processing"):commit()
khaoslib_recipe:load("engine-unit"):add_ingredient {type = "item", name = "vanadium-carbide", amount = 1} :commit()

khaoslib_recipe:load("oil-refinery"):add_ingredient {type = "item", name = copper_vanadium_plate_or_vanadium_plate, amount = 5} :commit()
khaoslib_recipe:load("chemical-plant")
  :add_ingredient {type = "item", name = "vanadium-carbide", amount = 2}
  :add_ingredient {type = "item", name = copper_vanadium_plate_or_vanadium_plate, amount = 5}
  :commit()

khaoslib_recipe:load("accumulator"):replace_ingredient("iron-plate", function(ingredient) ingredient.name = copper_vanadium_plate_or_vanadium_plate return ingredient end):commit()

khaoslib_technology:load("advanced-material-processing-2"):add_prerequisite("vanadium-processing"):commit()

khaoslib_recipe:load("electric-furnace")
  :replace_ingredient("steel-plate", function(ingredient) ingredient.amount = math.max(1, ingredient.amount - 5) return ingredient end)
  :add_ingredient {type = "item", name = copper_vanadium_plate_or_vanadium_plate, amount = 5}
  :commit()

khaoslib_recipe:load("heat-exchanger")
  :replace_ingredient("copper-plate", function(ingredient) ingredient.amount = math.max(1, ingredient.amount - 50) return ingredient end)
  :add_ingredient {type = "item", name = copper_vanadium_plate_or_vanadium_plate, amount = 50}
  :commit()

if not settings.startup["khaosvanadium-more"] then
  khaoslib_recipe:load("heat-pipe")
    :replace_ingredient("copper-plate", function(ingredient) ingredient.amount = math.max(1, ingredient.amount - 10) return ingredient end)
    :add_ingredient {type = "item", name = "vanadium-plate", amount = 10}
    :commit()
end

khaoslib_recipe:load("nuclear-reactor"):add_ingredient {type = "item", name = copper_vanadium_plate_or_vanadium_plate, amount = 500} :commit()
khaoslib_recipe:load("flamethrower-turret"):add_ingredient {type = "item", name = copper_vanadium_plate_or_vanadium_plate, amount = 5} :commit()
khaoslib_recipe:load("flamethrower"):add_ingredient {type = "item", name = copper_vanadium_plate_or_vanadium_plate, amount = 2} :commit()
khaoslib_recipe:load("nuclear-fuel"):add_ingredient {type = "item", name = "vanadium-plate", amount = 1} :commit()

khaoslib_technology:load("rocket-silo"):add_prerequisite("rocketry"):commit()
khaoslib_recipe:load("rocket-part"):add_ingredient {type = "item", name = "rocket-engine-nozzle", amount = 10} :commit()
khaoslib_recipe:load("rocket"):add_ingredient {type = "item", name = "rocket-engine-nozzle", amount = 1} :commit()
khaoslib_recipe:load("satellite"):add_ingredient {type = "item", name = "rocket-engine-nozzle", amount = 10} :commit()
khaoslib_recipe:load("artillery-shell"):add_ingredient {type = "item", name = "rocket-engine-nozzle", amount = 3} :commit()
khaoslib_recipe:load("atomic-bomb")
  :add_ingredient {type = "item", name = "rocket-engine-nozzle", amount = 7}
  :add_ingredient {type = "item", name = "vanadium-carbide", amount = 1}
  :commit()
