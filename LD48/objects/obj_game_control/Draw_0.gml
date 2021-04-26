if(global.paused) {
	var cam_y = camera_get_view_y(view_camera[0]);
	
	if(!surface_exists(pause_menu)) {
		pause_menu = surface_create(200, 232);
	}
	surface_set_target(pause_menu);
	
	draw_clear_alpha(c_black, 100);
	
	draw_rectangle(1, 1, 198, 230, true);
	
	draw_set_halign(fa_center);
	draw_text(100, 10, "paused");
	draw_set_halign(fa_left);
	
	surface_reset_target();
	
	draw_surface(pause_menu, 412, cam_y + 412);
	
	if(!instance_exists(save_button)) {
		save_button = instance_create_layer(512, cam_y + 506, "Pause", obj_save_button);
		with(save_button) {
			text_offset = cam_y;
		}
	}
	if(!instance_exists(quit_button)) {
		quit_button = instance_create_layer(512, cam_y + 586, "Pause", obj_quit_button);
		with(quit_button) {
			text_offset = cam_y;
		}
	}
}
else {
	if(surface_exists(pause_menu)) {
		surface_free(pause_menu);
		pause_menu = -1;
	}
	
	if(instance_exists(save_button)) {
		with(save_button) {
			instance_destroy();
		}
		save_button = noone;
	}
	if(instance_exists(quit_button)) {
		with(quit_button) {
			instance_destroy();
		}
		quit_button = noone;
	}
}