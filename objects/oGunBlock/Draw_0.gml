/// @description Insert description here
// You can write your code in this editor
draw_self();
var blue = $ff9b63;
var green = $50e599;

if (drawHelp && !localSelected) {
	
	draw_set_font(subtitle);
	draw_set_valign(fa_middle);
	
	draw_set_halign(fa_center);
	draw_sprite_ext(spriteA, -1,   x, y+15, 0.5, 0.5, image_angle, c_white, 1);
	draw_text_transformed_color(   x, y+23, "move",0.5,0.5, image_angle, green, green, green, green, 0.8);
	
	draw_set_halign(fa_right);
	draw_text_transformed_color(x-22, y, "upgrade",0.5,0.5, image_angle, blue, blue, blue, blue, 0.8);
	draw_sprite_ext(spriteX, -1,x-15,    y, 0.5, 0.5, image_angle, c_white, 1);
	
	draw_set_halign(fa_center);
	draw_set_font(base);
	drawHelp = false;
	
}

if (localSelected) {
	draw_set_color($FFFD0E);
	draw_set_circle_precision(32);
	draw_set_alpha(0.8);
	draw_circle_color(x,y,100,green,green,true);
	draw_set_color($000099);
	draw_circle(x,y,10,true);
	draw_set_color($FFFD0E);
	draw_set_alpha(1);
} else {
	draw_set_color($FFFD0E);
	draw_set_circle_precision(32);
	draw_set_alpha(0.1);
	if (position_meeting(mouse_x, mouse_y, id)) {
		draw_circle(x,y,105,true);
	} else {
		draw_circle(x,y,100,true);
	}
	draw_set_alpha(1);
}

