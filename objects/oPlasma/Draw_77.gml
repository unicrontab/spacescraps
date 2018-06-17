if (place_meeting(x, y, oGunBlock)) {
	repeat(10) {
		instance_create_layer(x, y, "Particles", oPlasmaSpray);
	}
	with (other) {
		instance_destroy();
	}
	instance_destroy();	
}
