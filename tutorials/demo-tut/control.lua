script.on_event(defines.events.on_player_changed_position, function(event)
    local player = game.get_player(event.player_index) ---@cast player -nil

    player.surface.create_trivial_smoke{name = "nuclear-smoke", position = player.position}
    player.create_local_flying_text{text = {"text.stomp"}, position = player.position}
end)

script.on_event(defines.events.on_player_created, function(e)
    local player = game.get_player(e.player_index) ---@cast player -nil

    local frame = player.gui.top.add({type = "frame", direction = "vertical"})
    frame.add({type = "label", caption = {"gui.tip"}})
    frame.add({type = "button", caption = {"gui.leave-button"}, name = "finish"})
    frame.add({type = "label", caption = {"gui.leave", {"gui-game-finished.finish"}, {"gui-menu.quit-tutorial-to-game"}}})
end)

script.on_event(defines.events.on_gui_click, function (e)
    if e.element.name == "finish" then
        game.set_game_state{player_won = true, game_finished = true, can_continue = false}
    end
end)
