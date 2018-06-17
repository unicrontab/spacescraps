/// @description Gamepad Input

if (gamepad != noone){
	if (gamepad_button_check_pressed(gamepad, gp_face1) ||
		gamepad_button_check_pressed(gamepad, gp_start)){
		room_goto_next();
	}
}
