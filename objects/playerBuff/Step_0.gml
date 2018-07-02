/// @description Insert description here
// You can write your code in this editor
if (player != noone) {
	x = player.x;
	y = player.y;
}
iteration += 1;
if (iteration > particleTimeout) {
	iteration = 0;
	with (instance_create_layer(random_range(x - (radius/2), x + (radius/2)), random_range(y - radius, y + radius), "Instances", oWhite)) {
		color = other.color;	
	}
}