global.selected = noone;
global.building = false;
cursor_sprite = sCursor;

for (var i = 0; i < 4; i++;) {
	if gamepad_is_connected(i){
		gamepad_set_axis_deadzone(i, 0.5);       // Set the "deadzone" for the axis
		gamepad_set_button_threshold(i, 0.1);    // Set the "threshold" for the triggers
		draw_text(xx, yy, "Gamepad Slot - " + string(i));
		draw_text(xx, yy + 20, "Gamepad not connected" + string(gamepad_get_description(i)));
		with (oPlayer) gamepad = i;
	} 
}