/// @description Gamepad Input

if (gamepad != noone){
	if (gamepad_button_check_pressed(gamepad, gp_face1) ||
		gamepad_button_check_pressed(gamepad, gp_start)){
		if room_exists(room_next(room)) {
			room_goto_next();
		} else {
			room_goto(0);	
		}
	}
}
