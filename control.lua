require "defines"

game.on_init(function()
  pcall(function()
    game.player.insert{name = "burner-assembling-machine", count = 1}
  end)
end)

game.on_event(defines.events.on_player_created, function(event)
  pcall(function()
    game.get_player(event.player_index).insert{name="burner-assembling-machine", count=1}
  end)
end)
