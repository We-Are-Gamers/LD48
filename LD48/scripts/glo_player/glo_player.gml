global.inventory = ds_map_create();
global.energy = 100;
global.max_energy = 100;
global.money = 0;

ds_map_set(global.inventory, enum_block_types.dirt, 0);