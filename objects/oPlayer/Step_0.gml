keyLeft = keyboard_check(ord("A"));
keyRight = keyboard_check(ord("E")) + keyboard_check(ord("D"));
keyUp = keyboard_check(188) + keyboard_check(ord("W"));
keyDown = keyboard_check(ord("S")) + keyboard_check(ord("O"));

var horizontalMove = keyRight - keyLeft;
var verticalMove = keyDown - keyUp;


if (keyLeft) with(instance_create_layer(x + 5, y + random_range(-2,2), "Particles", oThrust)){ direction = 0 };	
if (keyRight) with(instance_create_layer(x - 5, y + random_range(-2,2), "Particles", oThrust)){ direction = 180 };
if (keyDown) with(instance_create_layer(x + random_range(-2,2), y - 5, "Particles", oThrust)){ direction = 90 };
if (keyUp) with(instance_create_layer(x + random_range(-2,2), y + 5, "Particles", oThrust)){ direction = 270 };

xspeed += horizontalMove * movespeed;
yspeed += verticalMove * movespeed;
if (xspeed > maxSpeed) xspeed = maxSpeed;
if (yspeed > maxSpeed) yspeed = maxSpeed;

if (xspeed < -maxSpeed) xspeed = -maxSpeed;
if (yspeed < -maxSpeed) yspeed = -maxSpeed;

x += xspeed;
y += yspeed;

if (y > room_height) y = 0;
if (x > room_width) x = 0;
if (y < 0) y = room_height;
if (x < 0) x = room_width;



