local khaoslib_item = require("__khaoslib__.prototypes.item")

khaoslib_item:load {
  type = "item",
  name = "rocket-engine-nozzle",
  subgroup = "intermediate-product",
    order = "d[rocket-parts]-ba[rocket-engine-nozzle]",
    stack_size = 100,
} :set_icons {{icon = "__khaosvanadium__/graphics/icons/rocket-engine-nozzle.png", icon_size = 64}}
  :commit()
