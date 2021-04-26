if(talking) {
	draw_rectangle_color(190, 20, 700, 180, c_black, c_black, c_black, c_black, false);
	draw_rectangle_color(190, 20, 700, 180, c_white, c_white, c_white, c_white, true);
	draw_text(200, 20, "hello, how are you? please find my brother below :(");
	draw_text(200, 40, "1. 100 gems = +100 energy");
	
	if(global.has_teleport) {
		draw_set_color(c_gray);
	}
	draw_text(200, 60, "2. 500 gems = teleport to shop with T (1)");
	if(global.has_teleport) {
		draw_set_color(c_white);
	}
	
	if(global.has_return) {
		draw_set_color(c_gray);
	}
	draw_text(200, 80, "3. 1000 gems = teleport to last location with R (1)");
	if(global.has_return) {
		draw_set_color(c_white);
	}
	
	draw_text(200, 100, "4. 10 iron = -.1 mining energy cost");
	draw_text(200, 120, "5. 50 iron = -.6 mining energy cost (what a deal!)");
	
	if(global.mine_range == 2) {
		draw_set_color(c_gray);
	}
	draw_text(200, 140, "6. 250 gold = increase interaction range (2)");
	if(global.mine_range == 2) {
		draw_set_color(c_white);
	}
	
	if(global.has_row_destroy) {
		draw_set_color(c_gray);
	}
	draw_text(200, 160, "7. 500 gold = destroy a row with right click (1)");
	if(global.has_row_destroy) {
		draw_set_color(c_white);
	}
}