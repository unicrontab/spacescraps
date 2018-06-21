draw_self();
gb = instance_nearest(x, y, oGunBlock);
if (distance_to_object(gb) < 40){
	//draw_circle(gb.x,gb.y,15, true);
	gb.drawHelp = true;
}

if (gb.level > drawLevel) {
	repeat(1000) {
		instance_create_layer(random_range(gb.x - 10, gb.x + 10),random_range(gb.y - 10, gb.y + 10), "Particles", oPlasmaSpray);	
	}
	drawLevel = gb.level;
}