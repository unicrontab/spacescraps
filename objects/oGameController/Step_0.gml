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


tilemap_x(starTilemapId, -((oPlayer.x) / 10));
tilemap_y(starTilemapId, -((oPlayer.y) / 10));

if (global.building && mouse_check_button_pressed(mb_left) && global.points > 0) {
	if (!place_meeting(mouse_x,mouse_y,oGunBlock)){
		instance_create_layer(mouse_x, mouse_y, "Instances", oGunBlock);
		global.points -= 1;
	}
}