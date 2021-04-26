instance_create_layer(room_width / 2, room_height / 2 - 192, "Instances", obj_title);

instance_create_layer(room_width / 2, room_height / 2, "Instances", obj_new_button);
instance_create_layer(room_width / 2, room_height / 2 + 128, "Instances", obj_load_button);

ini_open("saves/savedata.ini");

var last_save = ini_read_real("info", "save", -1);

if(last_save != -1) {
	last_save_date = date_datetime_string(last_save);
}

ini_close();