function scr_render_row(row) {
	if(ds_map_exists(global.visible_blocks_by_row, row)) {
		return;
	}
	
	var visible_blocks_by_col = ds_map_create();
	for(var j = 0; j < 16; ++j) {
		var _x = 64 * j;
		var _y = 64 * row;
		var block_location;
		block_location[0] = j;
		block_location[1] = row;
		
		var block_data = ds_list_find_value(ds_list_find_value(global.level_grid, row), j);
		
		var block;
		switch(block_data.block_type) {
			case enum_block_types.dirt:
				block = instance_create_layer(_x, _y, "Instances", obj_block_dirt);
				break;
			case enum_block_types.grass:
				block = instance_create_layer(_x, _y, "Instances", obj_block_grass);
				break;
			case enum_block_types.unbreakable:
				block = instance_create_layer(_x, _y, "Instances", obj_block_unbreakable);
				break;
			default:
				block = -1;
				break;
		}
		if(block_data.gem == true) {
			with(block) {
				has_gem = true;
			}
		}
		
		with(block) {
			grid_x = j;
			grid_y = row;
		}
		
		ds_map_add(visible_blocks_by_col, j, block);
	}
	ds_map_add(global.visible_blocks_by_row, row, visible_blocks_by_col);
}

function scr_derender_row(row) {
	var visible_blocks_by_col = ds_map_find_value(global.visible_blocks_by_row, row);
	var block_location = ds_map_find_first(visible_blocks_by_col);
	for(var j = 0; j < 16; ++j) {		
		var block = ds_map_find_value(visible_blocks_by_col, block_location);
		if(block != -1) {
			with(block) {
				instance_destroy();
			}
		}
		
		block_location = ds_map_find_next(visible_blocks_by_col, block_location);
	}
	
	ds_map_delete(global.visible_blocks_by_row, row);
}

function scr_render_set(low_row, high_row) {
	for(var i = low_row; i < high_row; ++i) {
		scr_render_row(i);
	}
}

function scr_unrender_all() {
	var keys = ds_map_keys_to_array(global.visible_blocks_by_row);
	for(var i = 0; i < array_length(keys); ++i) {
		scr_derender_row(array_get(keys, i));
	}	
}