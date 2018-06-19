if (gamepad != noone) {
	draw_sprite_ext(sGamepad,  -1, 200, 20,2,2,image_angle,c_white,1);
	draw_text_transformed(250, 20, string(gamepad),1,1, image_angle);
}