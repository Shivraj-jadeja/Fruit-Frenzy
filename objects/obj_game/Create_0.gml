global.score = 0;
game_over = false;

time_left = 60;          // main game timer
start_countdown = 3;     // 3-second pre-game countdown
global.game_started = false; // global so fruits can check it

fade_alpha = 0.5; // gentle semi-transparent overlay at start
paused = false;   // pause flag

// start countdown (use Alarm[1])
alarm[1] = room_speed; // tick once per second