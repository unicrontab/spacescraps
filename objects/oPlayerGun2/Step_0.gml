if (!instance_exists(oPlayer2)) instance_destroy();


if (oPlayer2.gamepad != noone){
	if ((gamepad_axis_value(oPlayer2.gamepad, gp_axisrh) != 0) || 
		(gamepad_axis_value (oPlayer2.gamepad, gp_axisrv) != 0)){
			
		image_angle = point_direction(0, 0, gamepad_axis_value(oPlayer2.gamepad, gp_axisrh), 
											gamepad_axis_value(oPlayer2.gamepad, gp_axisrv));
	}
}
else image_angle = point_direction(x, y, mouse_x, mouse_y);

firingDelay = firingDelay - 1;
if (oPlayer2.gamepad != noone){
	pad_trigger = gamepad_button_value(oPlayer2.gamepad, gp_shoulderrb);
	if pad_trigger && (firingDelay < 0) {
		firingDelay	= 5;
		with (instance_create_layer(x, y, "Instances", oPlasma)) {
			speed = 10;
			direction = other.image_angle;
			image_angle = direction;
		}
	}
}

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


