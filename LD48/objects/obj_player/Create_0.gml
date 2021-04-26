x = 96;
y = 160;

interact_area = instance_create_layer(x, y, "Instances", obj_player_interaction);
game_control = instance_find(obj_game_control, 0);

if(global.mine_range == 1) {
	with(interact_area) {
		sprite_index = spr_player_interaction_medium;
	}
}
else if(global.mine_range == 2) {
	with(interact_area) {
		sprite_index = spr_player_interaction_large;
	}
}