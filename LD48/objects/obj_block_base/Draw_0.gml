draw_self();

if(targeted && breakable) {
	draw_sprite(spr_reticule, 0, x, y);
}

if(has_gem) {
	draw_sprite(spr_gem, 0, x, y);
}