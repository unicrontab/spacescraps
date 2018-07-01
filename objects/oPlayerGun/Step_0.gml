x = oPlayer.x;
y = oPlayer.y;


if (oPlayer.gamepad != noone){
	if ((gamepad_axis_value(oPlayer.gamepad, gp_axisrh) != 0) || 
		(gamepad_axis_value (oPlayer.gamepad, gp_axisrv) != 0)){
			
		image_angle = point_direction(0, 0, gamepad_axis_value(oPlayer.gamepad, gp_axisrh), 
											gamepad_axis_value(oPlayer.gamepad, gp_axisrv));
	}
}
else image_angle = point_direction(x, y, mouse_x, mouse_y);

firingDelay = firingDelay - 1;
if (oPlayer.gamepad != noone){
	var rbPress = gamepad_button_check(oPlayer.gamepad, gp_shoulderrb);
	if (gamepad_get_description(oPlayer.gamepad) == "Logitech Cordless RumblePad 2") rbPress = gamepad_button_check(oPlayer.gamepad, gp_shoulderr);

	show_debug_message(rbPress);
	if rbPress && (firingDelay < 0) {
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


