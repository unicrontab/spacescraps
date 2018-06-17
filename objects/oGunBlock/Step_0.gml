/// @description Insert description here
// You can write your code in this editor

var xTo = oPlayer.x;
var yTo = oPlayer.y;

if (localSelected && distance_to_object(oPlayer) > 50) {
	x += (xTo - x) / 50;
	y += (yTo - y) / 50;
}


localGun.x = x;
localGun.y = y;
if (blockMenu != noone) {
	blockMenu.x = x;
	blockMenu.y = y;
}
