draw_set_font(base);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
// draw_text_transformed(x + 20, y, string(global.currentScore),2,2, image_angle);

var pointColor = $06a4ff;
draw_sprite_ext(coin, image_index, x, y, 4,4,image_angle,c_white,1);
draw_text_transformed_color(x + 20, y, string(global.points),2,2, image_angle, pointColor, pointColor, pointColor, pointColor, 1);

// var levelColor = $fffd0e;
// draw_text_transformed_color(x + 20, y+50, "level " + string(currentLevel),2,2, image_angle, levelColor, levelColor, levelColor, levelColor, 1);


if (oPlayer.gamepad == noone) draw_text_transformed(x + 150, y, "Press ESC to connect Controller", 2,2, image_angle);
var gamepadCount = gamepad_get_device_count();
var connectedGamepads = 0;
for (var i = 0; i <= gamepadCount; i++;) {
	var xx = 200 + (75 * connectedGamepads);
	var yy = 20;
		
	if gamepad_is_connected(i){
		connectedGamepads += 1;
		draw_sprite_ext(sGamepad,  -1, xx, yy,2,2,image_angle,c_white,1);
		//draw_text_transformed(xx + 50, yy, string(i),1,1, image_angle);
	} 
}

debugGamepad(false);