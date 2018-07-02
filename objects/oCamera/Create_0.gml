camera = camera_create();
lastStepPaused = false;
lastCoords[0, 0] = oPlayer.x;
lastCoords[0, 1] = oPlayer.y;


var viewMatrix = matrix_build_lookat(x,y,-10,x,y,0,0,1,0);
var projectionMatrix = matrix_build_projection_ortho(600, 400, 1, 1000);
camera_set_view_mat(camera, viewMatrix);
camera_set_proj_mat(camera, projectionMatrix);

view_camera[0] = camera;

follow = oPlayer;
follow2 = noone;
xTo = x;
yTo = y;
xTo2 = x;
yTo2 = y;

shakeLength = 0;
shakeIntensity = 0;
shakeRemaining = 0;



