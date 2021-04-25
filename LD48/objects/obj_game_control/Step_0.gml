if(render_rows && global.energy > 0) {
	var cam_y = camera_get_view_y(view_camera[0]);

	low_row = floor(cam_y / 64);
	high_row = floor((cam_y + 1024) / 64);

	if(low_row < low_rendered_row) {
		scr_render_row(low_row);
		low_rendered_row = low_row;
	}
	else if(low_row > low_rendered_row) {
		scr_derender_row(low_rendered_row);
		low_rendered_row = low_row;
	}

	if(high_row > high_rendered_row) {
		scr_render_row(high_row);
		high_rendered_row = high_row;
	}
	else if(high_row < high_rendered_row) {
		scr_derender_row(high_rendered_row);
		high_rendered_row = high_row;
	}
}

if(global.energy <= 0) {
	global.energy = global.max_energy;
}