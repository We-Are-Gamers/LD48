event_inherited();

if(talking) {
	if(keyboard_check_pressed(ord(string(enum_shop_options.gems100)))) {
		if(global.money >= 100) {
			global.money -= 100;
			global.energy += 100;
			global.max_energy += 100;
		}
	}
	if(keyboard_check_pressed(ord(string(enum_shop_options.gems500))) && !global.has_teleport) {
		if(global.money >= 500) {
			global.has_teleport = true;
			global.money -= 500;
		}
	}
	if(keyboard_check_pressed(ord(string(enum_shop_options.gems1000))) && !global.has_return) {
		if(global.money >= 1000) {
			global.has_return = true;
			global.money -= 1000;
		}
	}
	if(keyboard_check_pressed(ord(string(enum_shop_options.iron10)))) {
		var iron = ds_map_find_value(global.inventory, enum_block_types.iron);
		if(iron >= 10) {
			ds_map_set(global.inventory, enum_block_types.iron, iron - 10);
			global.mining_modifier -= .1;
		}
	}
	if(keyboard_check_pressed(ord(string(enum_shop_options.iron50)))) {
		var iron = ds_map_find_value(global.inventory, enum_block_types.iron);
		if(iron >= 50) {
			ds_map_set(global.inventory, enum_block_types.iron, iron - 50);
			global.mining_modifier -= .6;
		}
	}
	if(keyboard_check_pressed(ord(string(enum_shop_options.gold250)))) {
		var gold = ds_map_find_value(global.inventory, enum_block_types.gold);
		if(gold >= 250) {
			ds_map_set(global.inventory, enum_block_types.gold, gold - 250);
			global.mine_range += 1;
		}
		
		if(global.mine_range == 1) {
			var collision = instance_find(obj_player_interaction, 0);
			with(collision) {
				sprite_index = spr_player_interaction_medium;
			}
		}
		else if(global.mine_range == 2) {
			var collision = instance_find(obj_player_interaction, 0);
			with(collision) {
				sprite_index = spr_player_interaction_large;
			}
		}
	}
	if(keyboard_check_pressed(ord(string(enum_shop_options.gold500))) && !global.has_row_destroy) {
		var gold = ds_map_find_value(global.inventory, enum_block_types.gold);
		if(gold >= 500) {
			ds_map_set(global.inventory, enum_block_types.gold, gold - 500);
			global.has_row_destroy = true;
		}
	}
}
	