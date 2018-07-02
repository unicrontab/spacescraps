/// @description Insert description here
// You can write your code in this editor
draw_set_alpha(0.8);
draw_circle_color(x,y,radius + 5, color, color, true);
draw_set_alpha(0.2);
draw_circle_color(x,y,radius + 5, color, color, false);
draw_set_alpha(1);

draw_set_halign(fa_center);
draw_set_font(subtitle);
draw_text_transformed_color( x, y+15, text, 0.5,0.5,image_angle, color, color, color, color, 0.9);	
draw_set_halign(fa_center);
draw_set_font(base);