global.score += point_value;
audio_play_sound(snd_click, 0, false);

effect_create_above(ef_explosion, x, y, 0.5, c_maroon);

warp_random();