// freeze all fruit/bombs before game starts
if (!global.game_started) {
    exit;
}

// if using walls, handle bounce
if (place_meeting(x, y, obj_wall)) {
    move_bounce_solid(false);
}