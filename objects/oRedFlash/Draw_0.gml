if (object_exists(oPlayer)) {
	x = oPlayer.x;
	y = oPlayer.y;
} else if (object_exists(oGameController)) {
	x = oGameController.x;
	y = oGameController.y;
}