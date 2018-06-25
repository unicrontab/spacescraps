if (hp > 75) {
	sprite_index = sBase;
} else if (hp > 50 ) {
	sprite_index = sBase75;	
} else if (hp > 25) {
	sprite_index = sBase50;	
} else if (hp > 0) {
	screenShake(2,2);
	sprite_index = sBase25;	
} 


if (hp <= 0) {
	screenShake(15,30);
	repeat(800) {
		instance_create_layer(x,y, "Particles", oBaseSpray);
	}
	instance_create_layer(x,y,"Particles",oBasePart1);
	instance_create_layer(x,y,"Particles",oBasePart2);
	instance_create_layer(x,y,"Particles",oBasePart3);
	instance_create_layer(x,y,"Particles",oBasePart4);
	instance_create_layer(x,y,"Particles",oBasePart5);
	instance_destroy();	
}