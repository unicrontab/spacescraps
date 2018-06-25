with (instance_create_layer(other.x,other.y,"Particles",oPlasmaSpray)){
	var newDirection = point_direction( x, y, other.x, other.y);
	direction = newDirection + random_range(-10,10);
}
with (instance_create_layer(other.x,other.y,"Particles",oEnemySpray)){
	var newDirection = point_direction( x, y, other.x, other.y);
	direction = newDirection + random_range(-10,10);
}
bulletDamage = damage;
with (other) {
	show_debug_message(string(other.bulletDamage));
	hp -= other.bulletDamage;	
}
var hitSound = audio_play_sound(hit, 10, false);
audio_sound_pitch(hitSound, random_range(4.1,4.2));
instance_destroy();