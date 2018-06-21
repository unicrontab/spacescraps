with (instance_create_layer(other.x,other.y,"Particles",oPlasmaSpray)){
	var newDirection = point_direction( x, y, other.x, other.y);
	direction = newDirection + random_range(-10,10);
}
with (instance_create_layer(other.x,other.y,"Particles",oEnemySpray)){
	var newDirection = point_direction( x, y, other.x, other.y);
	direction = newDirection + random_range(-10,10);
}
with (other) {
	hp -= other.damage;	
}
instance_destroy();