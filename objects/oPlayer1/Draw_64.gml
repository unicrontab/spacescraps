var gamepadCount = gamepad_get_device_count();
var connectedGamepads = 0;
for (var i = 0; i <= gamepadCount; i++;) {
	var xx = 200 + (100 * connectedGamepads);
	var yy = 20;
		
	if gamepad_is_connected(i){
		connectedGamepads += 1;
		draw_sprite_ext(sGamepad,  -1, xx, yy,2,2,image_angle,c_white,1);
		draw_text_transformed(xx + 50, yy, string(i),1,1, image_angle);
	} 
}