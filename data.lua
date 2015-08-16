data:extend({
  {
    type = "assembling-machine",
    name = "burner-assembling-machine",
    icon = "__no-hand-crafting__/graphics/icons/burner-assembling-machine.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "burner-assembling-machine"},
    max_health = 200,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    resistances = {{type = "fire", percent = 70}},
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    fast_replaceable_group = "assembling-machine",
    animation = {
      filename = "__no-hand-crafting__/graphics/entity/burner-assembling-machine/burner-assembling-machine.png",
      priority="high",
      width = 99,
      height = 102,
      frame_count = 32,
      line_length = 8,
      shift = {0.25, -0.1}
    },
    crafting_categories = {"crafting"},
    crafting_speed = 0.25,
    energy_source = {
      type = "burner",
      effectivity = 1,
      fuel_inventory_size = 1,
      emissions = 0.01,
      smoke =
      {
        {
          name = "smoke",
          deviation = {0.1, 0.1},
          frequency = 0.5,
          position = {0, 0},
          starting_vertical_speed = 0.05
        }
      }
    },
    energy_usage = "90kW",
    ingredient_count = 6,
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    working_sound = {
      sound = {
        {
          filename = "__base__/sound/assembling-machine-t1-1.ogg",
          volume = 0.8
        },
        {
          filename = "__base__/sound/assembling-machine-t1-2.ogg",
          volume = 0.8
        },
      },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 1.5,
    }
  },
  {
    type = "item",
    name = "burner-assembling-machine",
    icon = "__no-hand-crafting__/graphics/icons/burner-assembling-machine.png",
    flags = {"goes-to-quickbar"},
    subgroup = "production-machine",
    order = "a[assembling-machine-1]",
    place_result = "burner-assembling-machine",
    stack_size = 50
  },
  {
    type = "recipe-category",
    name = "basic-crafting"
  },
  {
    type = "recipe-category",
    name = "no-hand-crafting"
  },
  {
    type = "recipe",
    name = "burner-assembling-machine",
    ingredients = {{"stone-furnace", 1}, {"iron-gear-wheel", 5}},
    result = "burner-assembling-machine"
  },

})
