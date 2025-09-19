function set_speed_hv(_hs, _vs) {
    hspeed = _hs;
    vspeed = _vs;

    // prevent standing still
    if (hspeed == 0 && vspeed == 0) {
        hspeed = choose(-1,1);
        vspeed = choose(-1,1);
    }
}