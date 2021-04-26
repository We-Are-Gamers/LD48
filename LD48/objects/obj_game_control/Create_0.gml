randomize();

if(!global.loaded) {
	scr_world_gen();
}
else {
	alarm[1] = 120;
}

low_rendered_row = 0;
high_rendered_row = 15;
scr_render_set(0, 16);
render_rows = true;