function scr_world_gen() {
	for(var i = 0; i < global.world_height; ++i) {
	var row = ds_list_create();
	if(i > 2 && i < global.world_height - 10) {
		for(var j = 0; j < 16; ++j) {
			var _x = 64 * j;
			var _y = 64 * i;
			
			var block;
			if(i == 3) {
				if(j > 2) {
					block = new Block(enum_block_types.grass, false); //instance_create_layer(_x, _y, "Instances", obj_block_grass);
				}
				else {
					block = new Block(enum_block_types.unbreakable, false); //instance_create_layer(_x, _y, "Instances", obj_block_shop_floor);
				}
			}
			else {
				
				var spawn_gem = floor(random(10));
				if(spawn_gem == 9) {
					block = new Block(enum_block_types.dirt, true);
				}
				else {
					block = new Block(enum_block_types.dirt, false);
				}
				 //instance_create_layer(_x, _y, "Instances", obj_block_dirt);
			}
			
			ds_list_add(row, block);
		}
	}
	if(i >= global.world_height - 10) {
		if(i == global.world_height - 1) {
			for(var j = 0; j < 16; ++j) {
				var _x = 64 * j;
				var _y = 64 * i;
				
				block = new Block(enum_block_types.unbreakable, false); //instance_create_layer(_x, _y, "Instances", obj_block_shop_floor);
				
				ds_list_add(row, block);
			}
		}
	}
	else {
		for(var j = 0; j < 16; ++j) {
			block = new Block(-1, false);
			ds_list_add(row, block);
		}
	}
	ds_list_add(global.level_grid, row);
}
}