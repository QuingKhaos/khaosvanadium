local item_sounds = require('__base__.prototypes.item_sounds')
local khaoslib_item = require("__khaoslib__.prototypes.item")

khaoslib_item:load {
  type = "item",
  name = "vanadium-carbide",
  subgroup = "raw-material",
  order = "a[smelting]-dd[vanadium-carbide]",
  stack_size = 100,

  inventory_move_sound = item_sounds.metal_small_inventory_move,
  pick_sound = item_sounds.metal_small_inventory_pickup,
  drop_sound = item_sounds.metal_small_inventory_move,
} :set_icons {{icon = "__khaosvanadium__/graphics/icons/vanadium-carbide.png", icon_size = 64}}
  :commit()
