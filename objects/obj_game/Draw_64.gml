if (!global.game_started) {
    // draw countdown in center
    var w = display_get_gui_width();
    var h = display_get_gui_height();
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);

    if (start_countdown > 0) {
        draw_text(w/2, h/2, string(start_countdown));
    } else {
        draw_text(w/2, h/2, "GO!");
    }
}
else {
    // normal HUD
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
    draw_text(64, 64, "Score: " + string(global.score));
    draw_text(64, 96, "Time: " + string(time_left));

    if (game_over) {
        var w = display_get_gui_width();
        var h = display_get_gui_height();
        draw_set_halign(fa_center);
        draw_set_valign(fa_middle);
        draw_text(w/2, h/2 - 12, "GAME OVER");
        draw_text(w/2, h/2 + 16, "Final Score: " + string(global.score));
    }
    else if (paused) {
        var w = display_get_gui_width();
        var h = display_get_gui_height();
        draw_set_halign(fa_center);
        draw_set_valign(fa_middle);
        draw_text(w/2, h/2, "PAUSED");
    }
}

// gentle semi-transparent overlay
if (fade_alpha > 0) {
    draw_set_alpha(fade_alpha);
    draw_set_color(c_black);
    draw_rectangle(0, 0, display_get_gui_width(), display_get_gui_height(), false);
    draw_set_alpha(1);
}