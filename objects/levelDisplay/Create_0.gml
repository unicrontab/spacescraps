timeout = 10 * room_speed;
image_alpha = 1;

playerCoords[0,0] = x;
playerCoords[0,1] = y;
playerCoords[1,0] = x;
playerCoords[1,1] = y;
playerSelected[0] = false;
playerSelected[1] = false;

if (instance_exists(oPlayer1)) {
	playerCoords[0,0] = oPlayer1.x;
	playerCoords[0,1] = oPlayer1.y;
}
if (instance_exists(oPlayer2)) {
	log(object_exists(oPlayer2));
	playerCoords[1,0] = oPlayer2.x;
	playerCoords[1,1] = oPlayer2.y;
} 

var screenWidth = camera_get_view_width(view_camera[1]);
var screenHeight = camera_get_view_height(view_camera[1]);
var horizontalBuffer = screenWidth / 4;
var verticalBuffer = screenHeight / 4;

upgrade[0] = instance_create_layer(x - horizontalBuffer, y, "Instances", damageIcon);
upgrade[1] = instance_create_layer(x, y, "Instances", speedIcon);
upgrade[2] = instance_create_layer(x + horizontalBuffer, y, "Instances", coinIcon);


if (instance_exists(oPlayer1) && instance_exists(oPlayer2)){
	oPlayer1.x = x - horizontalBuffer;
	oPlayer1.y = y + verticalBuffer;
	oPlayer2.x = x + horizontalBuffer;
	oPlayer2.y = y + verticalBuffer;
}

if (instance_exists(oPlayer1)){
	oPlayer1.x = x - horizontalBuffer;
	oPlayer1.y = y + verticalBuffer;
}
