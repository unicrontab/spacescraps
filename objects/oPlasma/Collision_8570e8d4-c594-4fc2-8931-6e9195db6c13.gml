with (instance_create_layer(other.x,other.y,"Particles",oPlasmaSpray)){
	var newDirection = point_direction( x, y, other.x, other.y);
	direction = newDirection + random_range(-10,10);
}
instance_destroy();