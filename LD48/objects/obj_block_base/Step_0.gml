event_inherited();

if(in_range) {
	if(moused_over) {
		targeted = true;
		moused_over = false;
	}
}
else {
	if(targeted) {
		targeted = false;
	}
}
		