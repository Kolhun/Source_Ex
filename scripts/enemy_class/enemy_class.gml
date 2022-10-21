function enemy_run_to_player() {
	var xx, yy;
	xx = o_player.x - x;
	yy = o_player.y - y;
	
	var len = sqrt(xx * xx + yy * yy);
	if (len != 0) {
		xx /= len;
		yy /= len;
	}
	
	hsp = xx * spd;
	vsp = yy * spd;
}