/// @description Insert description here
// You can write your code in this editor

var xTo = oPlayer.x;
var yTo = oPlayer.y;

var closestGunBlock = instance_nearest(x,y, object_index);

var tooClose = collision_circle(x,y,10,oGunBlock,false,true);

if (localSelected && distance_to_object(oPlayer) > 50 && tooClose < 0) {
	show_debug_message(string(tooClose));
	x += (xTo - x) / 50;
	y += (yTo - y) / 50;
}

if (tooClose > 0) {
	var directionAwayFromBlock = point_direction(tooClose.x,tooClose.y,x,y);
	var newX = tooClose.x - lengthdir_x(4, directionAwayFromBlock);
	var newY = tooClose.y - lengthdir_y(4, directionAwayFromBlock);
	tooClose.x = newX;
	tooClose.y = newY;
}


localGun.x = x;
localGun.y = y;
if (blockMenu != noone) {
	blockMenu.x = x;
	blockMenu.y = y;
}
