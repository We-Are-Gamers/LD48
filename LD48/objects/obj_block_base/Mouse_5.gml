if(global.has_row_destroy && !global.paused) {
	var visible_blocks_by_col = ds_map_find_value(global.visible_blocks_by_row, grid_y);
	for(var i = 0; i < 16; ++i) {
		var block_data = ds_list_find_value(ds_list_find_value(global.level_grid, grid_y), i);
		if(block_data.block_type != -1) {
			var block = ds_map_find_value(visible_blocks_by_col, i);
			with(block) {
				event_user(0);
			}
		}
	}
	event_user(0);
}