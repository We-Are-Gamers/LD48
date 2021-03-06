if(!global.paused) {
	if(global.energy <= 0) {	
		with(game_control) {
			event_user(0);
		}
	
		last_x = x;
		last_y = y;
	
		x = 96;
		y = 160;
	
		with(game_control) {
			event_user(1);
		}
	}
	
	_depth = floor(y / 64) - 2;

	// physics
	var key_left = keyboard_check(ord("A"));
	var key_right = keyboard_check(ord("D"));
	var key_jump = keyboard_check_pressed(vk_space);

	hsp = (key_right - key_left) * walk_speed;

	if(vsp <= 10) {
		vsp += global.gravity;
	}

	if(place_meeting(x, y + 1, obj_collision_control) && key_jump) {
		vsp = jump_speed;
	}

	var one_px = sign(hsp);
	if(place_meeting(x + hsp, y, obj_collision_control))
	{
		while(!place_meeting(x + one_px, y, obj_collision_control))
		{
			x += one_px;
		}
		hsp = 0;
	}

	if((x - 32) + hsp < 0 || (x + 32) + hsp > room_width) {
		hsp = 0;
	}
	x += hsp;

	var one_px = sign(vsp)
	if(place_meeting(x, y + vsp, obj_collision_control)) {
		while(!place_meeting(x, y + one_px, obj_collision_control)) {
			y += one_px;
		}
		vsp = 0;
	}
	y += vsp;

	with(interact_area) {
		x = other.x;
		y = other.y;
	}
}

