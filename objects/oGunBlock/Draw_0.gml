/// @description Insert description here
// You can write your code in this editor
draw_self();

if (localSelected) {
	draw_set_color($FFFD0E);
	draw_set_circle_precision(32);
	draw_circle(x,y,10,true);
} else {
	draw_set_color($FFFD0E);
	draw_set_circle_precision(32);
	draw_set_alpha(0.2);
	draw_circle(x,y,10,true);
	draw_set_alpha(1);
}

