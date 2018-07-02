timeout -= 1;
image_alpha -= 0.005;
if (timeout < 0) {
	global.paused = false;
	
	if (instance_exists(oPlayer1) && instance_exists(oPlayer2)){
		oPlayer1.x = playerCoords[0,0];
		oPlayer1.y = playerCoords[0,1];
		oPlayer2.x = playerCoords[1,0];
		oPlayer2.y = playerCoords[1,1];
	}

	if (instance_exists(oPlayer1)){
		oPlayer1.x = playerCoords[0,0];
		oPlayer1.y = playerCoords[0,1];
	}

	instance_destroy(upgrade[0]);
	instance_destroy(upgrade[1]);
	instance_destroy(upgrade[2]);
	instance_destroy();
}
