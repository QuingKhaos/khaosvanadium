require("__khaosvanadium__.prototypes.categories.recipe-category")

require("__khaosvanadium__.prototypes.particles.vanadium-ore-particle")
require("__khaosvanadium__.prototypes.entity.resources.vanadium-ore")

require("__khaosvanadium__.prototypes.item.vanadium-ore")
require("__khaosvanadium__.prototypes.item.vanadium-plate")
require("__khaosvanadium__.prototypes.item.vanadium-carbide")
require("__khaosvanadium__.prototypes.item.rocket-engine-nozzle")
require("__khaosvanadium__.prototypes.item.copper-vanadium-plate")

require("__khaosvanadium__.prototypes.recipe.vanadium-plate")
require("__khaosvanadium__.prototypes.recipe.vanadium-carbide")
require("__khaosvanadium__.prototypes.recipe.vanadium-carbide-founding")
require("__khaosvanadium__.prototypes.recipe.rocket-engine-nozzle")
require("__khaosvanadium__.prototypes.recipe.copper-vanadium-plate")

require("__khaosvanadium__.prototypes.technology.vanadium-processing")

require("__khaosvanadium__.prototypes.menu-simulation")

--- Either Copper-Vanadium plate if enabled, or just Vanadium plate if not.
--- @type data.ItemID
copper_vanadium_plate_or_vanadium_plate = settings.startup["khaosvanadium-more"].value and "copper-vanadium-plate" or "vanadium-plate"

require("__khaosvanadium__.prototypes.compat.base")
