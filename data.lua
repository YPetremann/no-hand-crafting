local bam = table.deepcopy(data.raw["assembling-machine"]["assembling-machine-1"])
bam.name = "burner-assembling-machine"
bam.icon = "__no-hand-crafting__/graphics/icons/burner-assembling-machine.png"
bam.minable.result = "burner-assembling-machine"
bam.graphics_set.animation.layers[1].filename =
"__no-hand-crafting__/graphics/entity/burner-assembling-machine/burner-assembling-machine.png"
bam.crafting_speed = 0.25
bam.energy_usage = "90kW"
bam.ingredient_count = nil
bam.enable_logistic_control_behavior = false
bam.circuit_connector = nil
bam.draw_circuit_wires = false
bam.circuit_wire_max_distance = 0
bam.energy_source = {
  type = "burner",
  effectivity = 1,
  fuel_inventory_size = 1,
  emissions = 0.01,
  smoke = {
    {
      name = "smoke",
      deviation = { 0.1, 0.1 },
      frequency = 0.5,
      position = { 0, 0 },
      starting_vertical_speed = 0.05
    }
  }
}

data:extend({
  bam,
  {
    type = "item",
    name = "burner-assembling-machine",
    icon = "__no-hand-crafting__/graphics/icons/burner-assembling-machine.png",
    subgroup = "production-machine",
    order = "a[assembling-machine-1]",
    place_result = "burner-assembling-machine",
    stack_size = 50
  },
  {
    type = "recipe",
    name = "burner-assembling-machine",
    ingredients = {
      { type = "item", name = "stone-furnace",   amount = 1 },
      { type = "item", name = "iron-gear-wheel", amount = 5 }
    },
    results = {
      { type = "item", name = "burner-assembling-machine", amount = 1 }
    },
  },
  {
    type = "recipe-category",
    name = "no-hand-crafting"
  },
})
