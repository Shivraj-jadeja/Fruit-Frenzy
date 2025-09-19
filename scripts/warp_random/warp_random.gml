/// @function warp_random()
function warp_random() {
    var margin = 48; // keep 1.5 tiles away from border
	x = irandom_range(margin, room_width - margin);
	y = irandom_range(margin, room_height - margin);
}
