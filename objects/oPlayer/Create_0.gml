xspeed = 0;
yspeed = 0;
maxSpeed = 2;
movespeed = 0.05;
building = false;
gamepad = noone;
h_axis = 0;
v_axis = 0;

// Detect gamepad at game start
for (var i = 0; i <= 4; i++;){
	if gamepad_is_connected(i){
		gamepad = i;
		gamepad_set_axis_deadzone(gamepad, 0.05);       // Set the "deadzone" for the axis
		gamepad_set_button_threshold(gamepad, 0.1);    // Set the "threshold" for the triggers
	}
}

tilemap = layer_tilemap_get_id("Tiles_1");