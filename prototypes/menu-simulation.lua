data.raw["utility-constants"]["default"].main_menu_simulations = data.raw["utility-constants"]["default"].main_menu_simulations or {}

-- For testing only
-- data.raw["utility-constants"]["default"].main_menu_simulations = {}

data.raw["utility-constants"]["default"].main_menu_simulations["vanadium-nozzle"] = {
  checkboard = false,
  length = 15 * second,
  save = "__khaosvanadium__/menu-simulations/vanadium-nozzle.zip",
  init = [[
    local logo = game.surfaces.nauvis.find_entities_filtered {name = "factorio-logo-11tiles", limit = 1} [1]
    game.simulation.camera_position = {logo.position.x, logo.position.y+8}
    game.simulation.camera_zoom = 1.5
    game.tick_paused = false
    game.surfaces.nauvis.daytime = 1
  ]],
  update = [[]]
}
