function prequire(f)
  local s,e=pcall(function()require(f)end)
  if not s then
    if type(e)=="string" then
      print(f..":"..e)
    else
      print(f..": can't load "..modname.."/"..string.gsub(f, "%.", "/")..".lua")
    end
  end
end

prequire "defines"

script.on_init(function()
  pcall(function()
    for _, player in pairs(game.players) do
      player.insert{name = "burner-assembling-machine", count = 1}
    end
  end)
end)

script.on_event(defines.events.on_player_created, function(event)
  pcall(function()
    game.players[event.player_index].insert{name="burner-assembling-machine", count=1}
  end)
end)
