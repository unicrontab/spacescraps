if (hp > startingHp) startingHp = hp;
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
	repeat(random_range(0,3)){
		with (instance_create_layer(x,y, "Instances", oCoin)){
			speed = random_range(0,1);
			direction = random_range(0,360);
		}
	}
	instance_create_layer(x,y,"Particles",oPlusOne);
	global.points += 1;
	global.currentScore += 1;
	screenShake(3,5);	
	audio_play_sound(sound3, 10, false);
	instance_destroy();
}

if (path_position = 1) {
	instance_destroy();
}	

