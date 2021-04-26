if(!global.paused) {
	if((in_range && breakable) || (global.has_row_destroy && breakable)) {
		if(ds_map_exists(global.inventory, type)) {
			current = ds_map_find_value(global.inventory, type);
			ds_map_set(global.inventory, type, current + 1);
		} else {
			ds_map_set(global.inventory, type, 1);
		}

		if(has_gem) {
			global.money += 5;
		}
	
		var block = ds_list_find_value(ds_list_find_value(global.level_grid, grid_y), grid_x);
		block.set_type(-1);
	
		var mining_energy_cost = energy_cost + global.mining_modifier;
		if(mining_energy_cost < 1) {
			mining_energy_cost = 1;
		}
		global.energy -= mining_energy_cost;
	
		instance_destroy();
	}
}