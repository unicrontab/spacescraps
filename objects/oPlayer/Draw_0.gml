draw_self();
gb = instance_nearest(x, y, oGunBlock);

if (instance_exists(gb)) {
	if (distance_to_object(gb) < 40){
		//draw_circle(gb.x,gb.y,15, true);
		gb.drawHelp = true;
	}

	if (gb.level > drawLevel) {
		repeat(200) {
			instance_create_layer(random_range(gb.x - 5, gb.x + 5),random_range(gb.y - 5, gb.y + 5), "Particles", oEnemySpray);	
		}
		drawLevel = gb.level;
	}
}