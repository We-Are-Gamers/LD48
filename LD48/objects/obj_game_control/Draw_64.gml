var size = ds_map_size(global.inventory);
var key = ds_map_find_first(global.inventory);

for(var i = 0; i < size; ++i) {
	draw_text(100, 20 + 20 * i, string(key) + " : " + string(ds_map_find_value(global.inventory, key)));
	key = ds_map_find_next(global.inventory, key);
}