/// @description Start Wave
currentLevel += 1;
enemyCount = 0;
pausedForWave = false;

log("in alarm1");

instance_create_layer(x,y,"Particles",levelDisplay);
repeat(500) {
	instance_create_layer(random_range(oPlayer.x - 10, oPlayer.x + 10),random_range(oPlayer.y - 10, oPlayer.y + 10), "Particles", oPlasmaSpray);	
}

