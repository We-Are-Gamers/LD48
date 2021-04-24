if(phy_position_x + 32 < room_width) {
	physics_apply_local_impulse(0, 0, 1000, 0);
}
else {
	phy_position_x = room_width - 32;
}