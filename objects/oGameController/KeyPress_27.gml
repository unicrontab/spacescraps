global.selected = noone;
global.building = false;
cursor_sprite = sCursor;

for (var i = 0; i < 4; i++;) {
	if gamepad_is_connected(i){
		gamepad_set_axis_deadzone(i, 0.02);       // Set the "deadzone" for the axis
		gamepad_set_button_threshold(i, 0.1);    // Set the "threshold" for the triggers
		with (oPlayer) gamepad = i;
	} 
}