level_grid = ds_list_create();

for(var i = 0; i < 256; ++i) {
	var row = ds_list_create();
	for(var j = 0; j < 64; ++j) {
		var block = instance_create_layer(16 * j, 16 * i, "Instances", obj_block_dirt);
		ds_list_add(row, block);
	}
	ds_list_add(level_grid, row);
}