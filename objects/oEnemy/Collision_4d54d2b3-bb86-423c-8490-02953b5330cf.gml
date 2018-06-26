screenShake(10,15);
repeat(100) {
	instance_create_layer(x,y,"Particles", oBaseSpray);	
}
repeat(10) {
	instance_create_layer(x,y,"Particles", oEnemySpray);	
}
repeat(200) {
	instance_create_layer(x,y,"Particles", oSpark);	
}
repeat(400) {
	instance_create_layer(x,y,"Particles", oFire);	
}
instance_create_layer(x,y,"Particles", oRedFlash);
with (other) {
	hp -= other.damage;	
	audio_play_sound(bigExplosion, 10, false);
}
instance_destroy();