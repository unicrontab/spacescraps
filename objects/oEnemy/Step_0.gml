if (hp > startingHp) startingHp = hp;

if (global.paused == true) {
	path_speed = 0;
} else {
	path_speed = startingSpeed;
}

var closestSpeedBuff = instance_nearest(x,y,speedBuff);
if (closestSpeedBuff && distance_to_object(closestSpeedBuff) < closestSpeedBuff.radius && global.paused == false) {
	path_speed = startingSpeed * closestSpeedBuff.multiplier;	
} else if (global.paused == false) {
	path_speed = startingSpeed;	
}


if (hp <= 0) {
	repeat(200) {
		instance_create_layer(x,y,"Particles",oEnemySpray);	
	}
	repeat(100) {
		with (instance_create_layer(x,y,"Particles",oEnemySpray)){
			speed = random_range(0,2);
		}
	}
	instance_create_layer(x,y,"Particles",oPlusOne);
	repeat(random_range(0,coins)){
		instance_create_layer(x,y, "Instances", oCoin);
	}
	instance_create_layer(x,y,"Particles",oPlusOne);
	global.points += points;
	global.currentScore += points;
	screenShake(3,5);	
	audio_play_sound(explosion, 10, false);
	instance_destroy();
}

if (path_position = 1) {
	instance_destroy();
}	
