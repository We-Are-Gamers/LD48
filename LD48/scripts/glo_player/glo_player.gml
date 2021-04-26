global.inventory = ds_map_create();
global.energy = 100;
global.max_energy = 100;
global.money = 0;

global.has_teleport = false;
global.has_return = false;
global.has_row_destroy = false;
global.mine_range = 0;
global.mining_modifier = 0;

ds_map_set(global.inventory, enum_block_types.dirt, 0);
ds_map_set(global.inventory, enum_block_types.iron, 0);
ds_map_set(global.inventory, enum_block_types.gold, 0);