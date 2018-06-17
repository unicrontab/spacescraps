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
	global.points += 1;
	global.currentScore += 1;
	instance_destroy();
}

if (path_position = 1) {
	instance_destroy();
}	

