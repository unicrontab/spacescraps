/// @description Insert description here
// You can write your code in this editor
draw_self();

if (localSelected) {
	draw_set_color($FFFD0E);
	draw_set_circle_precision(32);
	draw_set_alpha(0.8);
	draw_circle(x,y,100,true);
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

