/// @description Gamepad start
// You can write your code in this editor
gamepad = noone;

// Detect gamepad at game start
for (var i = 0; i <= 4; i++;){
	if gamepad_is_connected(i){
		gamepad = i;
		gamepad_set_axis_deadzone(gamepad, 0.05);       // Set the "deadzone" for the axis
		gamepad_set_button_threshold(gamepad, 0.1);    // Set the "threshold" for the triggers
	}
}