local burner_assembling_machine = data.raw["assembling-machine"]["burner-assembling-machine"]
local character = data.raw.character.character

burner_assembling_machine.crafting_categories = character.crafting_categories
character.crafting_categories = { "no-hand-crafting" }
