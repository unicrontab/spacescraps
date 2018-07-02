/// @description Insert description here
// You can write your code in this editor
draw_set_alpha(0.8);
draw_circle_color(x,y,radius + 5, color, color, true);
draw_set_alpha(0.2);
draw_circle_color(x,y,radius + 5, color, color, false);
draw_set_alpha(1);