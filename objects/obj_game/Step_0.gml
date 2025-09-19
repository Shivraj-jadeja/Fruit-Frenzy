// toggle pause with ESC key
if (keyboard_check_pressed(vk_escape) && global.game_started && !game_over) {
    paused = !paused;

    if (paused) {
    // stop everything except this manager
    instance_deactivate_all(true);
    instance_activate_object(id);
	} else {
	    // resume everything
	    instance_activate_all();
	}
}

// fade overlay out gently once game starts
if (global.game_started && fade_alpha > 0 && !paused) {
    fade_alpha -= 0.02;
}