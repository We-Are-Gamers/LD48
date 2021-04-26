if(global.has_return && !global.paused) {
	with(game_control) {
		event_user(3);
	}
	global.gravity = 0;
	x = last_x;
	y = last_y;
	
	alarm[0] = 1;
}