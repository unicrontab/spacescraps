/// @description Start Wave
currentLevel += 1;
enemyCount = 0;
pausedForWave = false;

log("in alarm1");

if (currentLevel == 2 || currentLevel == 5 || currentLevel == 7) {
	instance_create_layer(1500,1700,"Particles",levelDisplay);
	global.paused = true;
} else {
	repeat(500) {
		instance_create_layer(random_range(oPlayer.x - 10, oPlayer.x + 10),random_range(oPlayer.y - 10, oPlayer.y + 10), "Particles", oPlasmaSpray);	
	}
}

