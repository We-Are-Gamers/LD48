// reset player position, redraw screen
render_rows = false;

low_rendered_row = 0;
high_rendered_row = 15;
	
scr_unrender_all();
scr_render_set(0, 16);