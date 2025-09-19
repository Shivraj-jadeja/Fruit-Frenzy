// helper: assign hspeed & vspeed
function set_speed_hv(_hs, _vs) {
    hspeed = _hs;
    vspeed = _vs;
}

// helper: warp to random spot
function warp_random() {
    x = irandom_range(sprite_width/2, room_width - sprite_width/2);
    y = irandom_range(sprite_height/2, room_height - sprite_height/2);
}