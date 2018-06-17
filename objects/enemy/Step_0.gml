if (hp <= 0) {
	repeat(random_range(10,20)) {
		instance_create_layer(x,y,"Particles",oPlasmaSpray);	
	}
	instance_destroy();
}