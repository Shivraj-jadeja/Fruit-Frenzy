if (!global.game_started) {
    start_countdown -= 1;

    if (start_countdown > 0) {
        alarm[1] = room_speed; // tick again
    } else {
        // countdown done → start game
        global.game_started = true;
        alarm[0] = room_speed; // start main 60s timer
    }
}