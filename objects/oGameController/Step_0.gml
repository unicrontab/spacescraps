if (currentInterval >= enemyDelay && enemyCount <= maxEnemyCount) {
	with(instance_create_layer(enemyPath.x, enemyPath.y, "Enemy", enemy)){
		hp = other.enemyHp;	
	}
	enemyCount += 1;
	enemyHp = enemyHpMultiplier * (enemyHp + 1);
	currentInterval = 0;
} else {
	currentInterval += 1;	
}

if (enemyCount > maxEnemyCount && instance_number(enemy) == 0) {
	currentLevel += 1;
	repeat(1000) {
		instance_create_layer(random_range(oPlayer.x - 10, oPlayer.x + 10),random_range(oPlayer.y - 10, oPlayer.y + 10), "Particles", oPlasmaSpray);	
	}
	enemyCount = 0;
}


tilemap_x(starTilemapId, -((oPlayer.x) / 10));
tilemap_y(starTilemapId, -((oPlayer.y) / 10));

if (global.building && mouse_check_button_pressed(mb_left) && global.points > 0) {
	if (!place_meeting(mouse_x,mouse_y,oGunBlock)){
		instance_create_layer(mouse_x, mouse_y, "Instances", oGunBlock);
		global.points -= 1;
	}
}

if (oPlayer.gamepad != noone && global.points >= 10){
	if (gamepad_button_check_pressed(oPlayer.gamepad, gp_face3)){
		instance_create_layer(oPlayer.x, oPlayer.y, "Instances", oGunBlock);
		global.points -= 10;
	}
}