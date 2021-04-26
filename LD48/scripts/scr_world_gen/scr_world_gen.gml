function scr_world_gen() {
	var include_iron = enum_block_levels.iron;
	var include_gold = enum_block_levels.gold;
	
	for(var i = 0; i < global.world_height; ++i) {
		var row = ds_list_create();
		if(i > 2 && i < global.world_height - 10) {
			for(var j = 0; j < 16; ++j) {
				var _x = 64 * j;
				var _y = 64 * i;
			
				var block;
				if(i == 3) {
					if(j > 2) {
						block = new Block(enum_block_types.grass, false);
					}
					else {
						block = new Block(enum_block_types.unbreakable, false);
					}
				}
				else {
					var block_type = -1;
					
					if(i >= include_iron) {
						var iron_chance = 20 - (i / 10);
						if(iron_chance < 2) {
							iron_chance = 2;
						}
						
						var spawn_iron = floor(random(iron_chance));
						if(spawn_iron == 1) {
							block_type = enum_block_types.iron;
						}
					}
					
					if(i >= include_gold) {
						var gold_chance = 20 - (i / 20);
						if(gold_chance < 2) {
							gold_chance = 2;
						}
						
						var spawn_gold = floor(random(gold_chance));
						if(spawn_gold == 1) {
							block_type = enum_block_types.gold;
						}
					}
					
					if(block_type == -1) {
						block_type = enum_block_types.dirt;
					}
					
					var spawn_gem = floor(random(10));
					if(spawn_gem == 9) {
						block = new Block(block_type, true);
					}
					else {
						block = new Block(block_type, false);
					}
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
			else {
				for(var j = 0; j < 16; ++j) {
					block = new Block(-1, false);
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