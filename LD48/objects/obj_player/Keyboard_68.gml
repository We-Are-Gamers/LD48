if(x + 32 < room_width) {
	physics_apply_local_impulse(0, 0, 250, 0);
}
else {
	x = room_width - 32;
}