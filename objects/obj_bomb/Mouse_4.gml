// score penalty
global.score = max(0, global.score - 200);
audio_play_sound(snd_bomb, 0, false);

// explosion effect
effect_create_above(ef_explosion, x, y, 1, c_red);

// warp bomb somewhere else
warp_random();