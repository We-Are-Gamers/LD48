//randomize();

level_grid = ds_list_create();

for(var i = 0; i < 256; ++i) {
	var row = ds_list_create();
	if(i > 2) {
		for(var j = 0; j < 16; ++j) {
			var _x = 64 * j;
			var _y = 64 * i;
			
			var block;
			if(i == 3) {
				if(j > 2) {
					block = instance_create_layer(_x, _y, "Instances", obj_block_grass);
				}
				else {
					block = instance_create_layer(_x, _y, "Instances", obj_block_shop_floor);
				}
			}
			else {
				block = instance_create_layer(_x, _y, "Instances", obj_block_dirt);
				
				var spawn_gem = floor(random(10));
				if(spawn_gem == 9) {
					with(block) {
						has_gem = true;
					}
				}
			}
			
			ds_list_add(row, block);
		}
	}
	ds_list_add(level_grid, row);
}