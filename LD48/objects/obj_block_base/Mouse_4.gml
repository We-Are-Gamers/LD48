if(ds_map_exists(global.inventory, type)) {
	current = ds_map_find_value(global.inventory, type);
	ds_map_set(global.inventory, type, current + 1);
} else {
	ds_map_set(global.inventory, type, 1);
}

instance_destroy();