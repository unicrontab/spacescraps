/// @description Insert description here
// You can write your code in this editor
if (instance_exists(player)){
	x = player.x;
	y = player.y;
}

step += 1;
if (step > timeout && iteration < coinAmount) {
	iteration += 1;
	step = 0;
	global.points += 1;
	instance_create_layer(x +5,y - 5,"Instances", oPlusOne);
}