local khaoslib_entity = require("__khaoslib__.prototypes.entity")

data:extend {
  {
    type = "recipe-category",
    name = "smelting-burner",
  },
}

local furnaces = {"stone-furnace", "steel-furnace"}

--- @cast furnaces data.FurnacePrototype[]
for _, furnace_name in ipairs(furnaces) do
  --- @type data.FurnacePrototype
  local furnace = khaoslib_entity.get("furnace", furnace_name)

  furnace.crafting_categories = furnace.crafting_categories or {}
  if type(furnace.crafting_categories) ~= "table" then
    --- @diagnostic disable-next-line: assign-type-mismatch
    furnace.crafting_categories = {furnace.crafting_categories}
  end

  table.insert(furnace.crafting_categories, "smelting-burner")
  data.raw["furnace"][furnace.name].crafting_categories = furnace.crafting_categories
end
