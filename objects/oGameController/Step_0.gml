tilemap_x(starTilemapId, -((oPlayer1.x) / 10));
tilemap_y(starTilemapId, -((oPlayer1.y) / 10));

if (global.playerGamepads[1] != noone && !instance_exists(oPlayer2)){
	instance_create_layer(oPlayer1.x,oPlayer1.y,"Player",oPlayer2);
	instance_create_layer(oPlayer1.x,oPlayer1.y,"Guns",oPlayerGun2);
}



if (currentInterval >= enemyDelay && enemyCount <= maxEnemyCount && currentLevel <= levels && !pausedForWave) {
	if (currentLevel == 1 || currentLevel == 5) {
		enemyCount += 1;
		enemyHp = other.currentLevel + other.currentLevel * enemyHpMultiplier;
		currentInterval = 0;
		with(instance_create_layer(enemyPath.x, enemyPath.y, "Enemy", enemy)){
			hp = other.enemyHp;	
		}
	} else if (currentLevel == 6 || currentLevel == 7) {
		enemyCount += 1;
		enemyHp = other.currentLevel * other.currentLevel * enemyHpMultiplier;
		currentInterval = 0;
		with(instance_create_layer(enemyPath.x, enemyPath.y, "Enemy", enemy3)){
			hp = other.enemyHp;	
		}
	} else {
		enemyCount += 1;
		enemyHp = other.currentLevel * other.currentLevel * enemyHpMultiplier;
		currentInterval = 0;
		with(instance_create_layer(enemyPath.x, enemyPath.y, "Enemy", enemy2)){
			hp = other.enemyHp;	
		}
	}
} else {
	currentInterval += 1;	
}


if (enemyCount > maxEnemyCount && instance_number(enemy) == 0 && pausedForWave == false ) {
	pausedForWave = true;
	alarm[1] = waveDelay;
}

if (currentLevel > levels && room_exists(room_next(room))) {
	currentLevel = 0;
	room_goto_next();;
}

	
if (global.building && mouse_check_button_pressed(mb_left) && global.points > gunCost) {
	if (!place_meeting(mouse_x,mouse_y,oGunBlock)){
		instance_create_layer(mouse_x, mouse_y, "Instances", oGunBlock);
		global.points -= 1;
	}
}

if (oPlayer.gamepad != noone && global.points >= gunCost && instance_exists(oPlayer)){
	if (gamepad_button_check_pressed(oPlayer.gamepad, gp_face2)){
		instance_create_layer(oPlayer.x, oPlayer.y, "Instances", oGunBlock);
		global.points -= gunCost;
	}
}
if (instance_exists(oPlayer2)) {
	if (oPlayer2.gamepad != noone && global.points >= gunCost){
		if (gamepad_button_check_pressed(oPlayer2.gamepad, gp_face2)){
			instance_create_layer(oPlayer2.x, oPlayer2.y, "Instances", oGunBlock);
			global.points -= gunCost;
		}
	}
}
if (!instance_exists(oBase)) screenShake(1,4);

if (!instance_exists(oBase) && global.gameover == false) {
	global.gameover = true;
	alarm[0] = room_speed *3;
}
