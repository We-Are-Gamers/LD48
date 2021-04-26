if(global.paused) {
	global.paused = false;
}
else {
	global.paused = true;
}

//if(!loading) {
//	saving = true;

//	ini_open("saves/savedata.ini");
	
//	ini_write_real("info", "save", date_current_datetime());

//	ini_write_real("player", "max_energy", global.max_energy);
//	ini_write_real("player", "money", global.money);

//	ini_write_real("unlocks", "teleport", global.has_teleport);
//	ini_write_real("unlocks", "return", global.has_return);
//	ini_write_real("unlocks", "row_destroy", global.has_row_destroy);
//	ini_write_real("unlocks", "mine_range", global.mine_range);
//	ini_write_real("unlocks", "mining_modifier", global.mining_modifier);

//	ini_write_real("inventory", "dirt", ds_map_find_value(global.inventory, enum_block_types.dirt));
//	ini_write_real("inventory", "iron", ds_map_find_value(global.inventory, enum_block_types.iron));
//	ini_write_real("inventory", "gold", ds_map_find_value(global.inventory, enum_block_types.gold));

//	for(var i = 0; i < global.world_height; ++i) {
//		for(var j = 0; j < 16; ++j) {
//			var block_data = ds_list_find_value(ds_list_find_value(global.level_grid, i), j);
//			ini_write_string("level", string(i) + "," + string(j), string(block_data.block_type) + "," + string(block_data.gem));
//		}
//	}

//	ini_close();

//	saving = false;
//	saved = true;
//	alarm[0] = 120;
//}