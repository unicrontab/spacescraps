draw_self();
gb = instance_nearest(x, y, oGunBlock);
if (distance_to_object(gb) < 40){
	draw_circle(gb.x,gb.y,15, true);
}