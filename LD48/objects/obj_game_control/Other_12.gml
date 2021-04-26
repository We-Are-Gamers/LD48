var cam_y = camera_get_view_y(view_camera[0]);
low_rendered_row = floor(cam_y / 64);
high_rendered_row = floor((cam_y + 1024) / 64);

scr_unrender_all();
scr_render_set(low_rendered_row, high_rendered_row + 1);