// detectAndSetupGamepad() returns number of connected gamepads
if (!gamepad_is_connected(global.playerGamepads[0])) global.playerGamepads[0] = noone;
if (!gamepad_is_connected(global.playerGamepads[1])) global.playerGamepads[1] = noone;

var gamepadCount = gamepad_get_device_count();
var detectedGamepads = 0;
for (var i = 0; i <= gamepadCount; i++;){
	if (gamepad_is_connected(i)){
		detectedGamepads += 1;
		gamepad_set_axis_deadzone(i, 0.05);       // Set the "deadzone" for the axis
		gamepad_set_button_threshold(i, 0.1);     // Set the "threshold" for the triggers
		
		if (global.playerGamepads[0] == noone) {
			global.playerGamepads[0] = i;
		} else if (global.playerGamepads[0] != i && global.playerGamepads[1] == noone) {
			global.playerGamepads[1] = i;	
		}
	}
}

if (detectedGamepads == 0) global.playerGamepads[0] = noone;
if (detectedGamepads <= 1) global.playerGamepads[1] = noone;

show_debug_message("Player1: " + string(global.playerGamepads[0]));
show_debug_message("Player2: " + string(global.playerGamepads[1]));

return detectedGamepads;

