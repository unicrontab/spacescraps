x = oPlayer.x;
y = oPlayer.y;


image_angle = point_direction(x, y, mouse_x, mouse_y);

firingDelay = firingDelay - 1;
if (mouse_check_button(mb_left)) &&  (firingDelay < 0) {
	firingDelay	= 5;
	with (instance_create_layer(x, y, "Instances", oPlasma)) {
		speed = 10;
		direction = other.image_angle;
		image_angle = direction;
	}
}

if (mouse_check_button(mb_right)) &&  (firingDelay < 0) {
	firingDelay	= 5;
	with (instance_create_layer(x, y, "Instances", oPlasma)) {
		speed = 10;
		direction = other.image_angle;
		image_angle = direction;
	}
}


