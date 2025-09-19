if (global.game_started && !game_over && !paused) {
    time_left -= 1;
    if (time_left <= 0) {
        time_left = 0;
        game_over = true;
        instance_deactivate_all(true);
        instance_activate_object(id);
    } else {
        alarm[0] = room_speed;
    }
}