local item_sounds = require('__base__.prototypes.item_sounds')
local khaoslib_item = require("__khaoslib__.prototypes.item")

if settings.startup["khaosvanadium-more"].value then
  khaoslib_item:load {
    type = "item",
    name = "copper-vanadium-plate",
    subgroup = "intermediate-product",
    order = "a[basic-intermediates]-bb[copper-vanadium-plate]",
    stack_size = 100,

    inventory_move_sound = item_sounds.metal_small_inventory_move,
    pick_sound = item_sounds.metal_small_inventory_pickup,
    drop_sound = item_sounds.metal_small_inventory_move,
  } :set_icons {{icon = "__khaosvanadium__/graphics/icons/copper-vanadium-plate.png", icon_size = 64}}
    :commit()
end
