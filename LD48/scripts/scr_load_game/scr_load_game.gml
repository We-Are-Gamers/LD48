function scr_load_game() {
	ini_open("saves/savedata.ini");
	
	if(ini_key_exists("info", "save")) {
		global.max_energy = ini_read_real("player", "max_energy", 100);
		global.energy = global.max_energy;
	
		global.money = ini_read_real("player", "money", 0);
	
		global.has_teleport = ini_read_real("unlocks", "teleport", false);
		global.has_return = ini_read_real("unlocks", "return", false);
		global.has_row_destroy = ini_read_real("unlocks", "row_destroy", false);
		global.mine_range = ini_read_real("unlocks", "mine_range", 0);
		global.mining_modifier = ini_read_real("unlocks", "mining_modifier", 0);
	
		ds_map_set(global.inventory, enum_block_types.dirt, ini_read_real("inventory", "dirt", 0));
		ds_map_set(global.inventory, enum_block_types.iron, ini_read_real("inventory", "iron", 0));
		ds_map_set(global.inventory, enum_block_types.gold, ini_read_real("inventory", "gold", 0));

		for(var i = 0; i < global.world_height; ++i) {
			var row = ds_list_create();
			for(var j = 0; j < 16; ++j) {
				//var block_data = ds_list_find_value(ds_list_find_value(global.level_grid, i), j);
				var data = ini_read_string("level", string(i) + "," + string(j), "-1,0");
				var comma_pos = string_pos(",", data);
			
				var type = int64(string_copy(data, 1, comma_pos));
				var gem = int64(string_copy(data, comma_pos + 1, 1));
			
				//block_data.set_type(type);
				//block_data.set_gem(gem);
				var block_data = new Block(type, gem);
				ds_list_add(row, block_data);
			}
			ds_list_add(global.level_grid, row);
		}
	
		ini_close();
	
		global.loaded = true;
		room_goto(rm_game);
	}
}