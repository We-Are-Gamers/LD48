draw_rectangle_color(790, 20, 940, 120, c_black, c_black, c_black, c_black, false);
draw_rectangle_color(790, 20, 940, 120, c_white, c_white, c_white, c_white, true);
draw_text(800, 20, "energy : " + string(global.energy));
draw_text(800, 40, "gems : "+ string(global.money));

var size = enum_block_types.length;

var j = 0;
for(var i = enum_block_types.iron; i < size; ++i) {
	var type_as_string;
	switch(i) {
		case enum_block_types.iron:
			type_as_string = "iron";
			break;
		case enum_block_types.gold:
			type_as_string = "gold";
			break;
	}
	draw_text(800, 80 + 20 * j, type_as_string + " : " + string(ds_map_find_value(global.inventory, i)));
	++j;
}