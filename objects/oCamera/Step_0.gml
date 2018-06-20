
if (follow != noone) {
	xTo = follow.x;
	yTo = follow.y;
}

if (follow2 != noone) {
	xTo2 = follow2.x;
	yTo2 = follow2.y;
}

var playerDistanceX = 0;
var playerDistanceY = 0;
if (global.playerGamepads[1] != noone && follow2 != noone) {
	playerDistanceX = (follow2.x - follow.x) / 2;
	playerDistanceY = (follow2.y - follow.y) / 2;
	
	xTo += playerDistanceX;
	yTo += playerDistanceY;
	if ((playerDistanceX < -100 || playerDistanceX > 100)) {
		// view_visible[1] = true;
		// camera_set_view_size(camera, 320, 480);
		// camera_set_view_size(camera2, 320, 480);
	} else {
		// camera_set_view_size(camera, 640, 480);
		// view_visible[1] = false;	
	}
	
	
	// var viewMatrix = matrix_build_lookat(oPlayer2.x, oPlayer2.y, -10, oPlayer2.x, oPlayer2.y, 0, 0, 1, 0);
	// camera_set_view_mat(camera2, viewMatrix);
	
} else {
	view_visible[1] = false;	
}
	
// Update camera pos
x += (xTo - x) / 25;
y += (yTo - y) / 25;


// Shakes
if (shakeLength != 0) {
	x += random_range(-shakeRemaining, shakeRemaining);
	y += random_range(-shakeRemaining, shakeRemaining);
	shakeRemaining = max(0, shakeRemaining - ((1/shakeLength) * shakeIntensity));	
}

var viewMatrix = matrix_build_lookat(x, y, -10, x, y, 0, 0, 1, 0);
camera_set_view_mat(camera, viewMatrix);






