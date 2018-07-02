// Input
keyLeft = keyboard_check(ord("A"));
keyRight = keyboard_check(ord("E")) + keyboard_check(ord("D"));
keyUp = keyboard_check(188) + keyboard_check(ord("W"));
keyDown = keyboard_check(ord("S")) + keyboard_check(ord("O"));
aPress = gamepad_button_check_pressed(gamepad, gp_face1);
bPress = gamepad_button_check_pressed(gamepad, gp_face2);
xPress = gamepad_button_check_pressed(gamepad, gp_face3);
yPress = gamepad_button_check_pressed(gamepad, gp_face4);

if (gamepad_get_description(gamepad) == "Logitech Cordless RumblePad 2") {
	xPress = gamepad_button_check_pressed(gamepad, gp_face1);
	aPress = gamepad_button_check_pressed(gamepad, gp_face2);
}
			
if (gamepad != noone) {
	h_axis = gamepad_axis_value(gamepad, gp_axislh);
	v_axis = gamepad_axis_value(gamepad, gp_axislv);
}


// Draw Thrust
if (keyLeft || sign(-h_axis)) with(instance_create_layer(x + 5, y + random_range(-2,2), "Particles", oThrust)){ direction = 0 };	
if (keyRight || sign(h_axis)) with(instance_create_layer(x - 5, y + random_range(-2,2), "Particles", oThrust)){ direction = 180 };
if (keyDown || sign(v_axis)) with(instance_create_layer(x + random_range(-2,2), y - 5, "Particles", oThrust)){ direction = 90 };
if (keyUp || sign(-v_axis)) with(instance_create_layer(x + random_range(-2,2), y + 5, "Particles", oThrust)){ direction = 270 };


// Handle speed / mapSpeed
var horizontalMove = (keyRight - keyLeft) + h_axis;
var verticalMove = (keyDown - keyUp) + v_axis;
xspeed += horizontalMove * movespeed;
yspeed += verticalMove * movespeed;
if (xspeed > maxSpeed) xspeed = maxSpeed;
if (yspeed > maxSpeed) yspeed = maxSpeed;
if (xspeed < -maxSpeed) xspeed = -maxSpeed;
if (yspeed < -maxSpeed) yspeed = -maxSpeed;

if (xspeed > 0) {
	xspeed -= drag;
} else if (xspeed < 0) {
	xspeed += drag;
}
if (yspeed > 0) {
	yspeed -= drag;	
} else if (yspeed < 0) {
	yspeed += drag;	
}

// Warp to opposite side if played exists room
if (y > room_height) y = 0;
if (x > room_width) x = 0;
if (y < 0) y = room_height;
if (x < 0) x = room_width;


// Horizontal tilemap collision
var bboxSide;
if (xspeed > 0) bbox_side = bbox_right; else bbox_side = bbox_left;
if (tilemap_get_at_pixel(tilemap, bbox_side+xspeed,bbox_top) != 0) || (tilemap_get_at_pixel(tilemap, bbox_side+xspeed, bbox_bottom) != 0) {
	if (xspeed > 0) x = x - (x mod 8) + 7 - (bbox_right - x);
	else x = x - (x mod 8) - (bbox_left - x);
	xspeed = 0;
}
// Vertical tilemap collision
if (yspeed > 0) bbox_side = bbox_bottom; else bbox_side = bbox_top;
if (tilemap_get_at_pixel(tilemap, bbox_left, bbox_side+yspeed) != 0) || (tilemap_get_at_pixel(tilemap, bbox_right, bbox_side+yspeed) != 0) {
	if (yspeed > 0) y = y - (y mod 8) + 7 - (bbox_bottom - y);
	else y = y - (y mod 8) - (bbox_top - y);
	yspeed = 0;
}

 
x += xspeed;
y += yspeed;

// Gamepad GunBlock Selection
if (gamepad != noone){
	gb = instance_nearest(x, y, oGunBlock);
	if (distance_to_object(gb) < selectDistance && gb.buildSelected) {
		
		if (aPress && unlocks[0]){
			var blockX = gb.x;
			var blockY = gb.y;
			audio_play_sound(select, 10, false);
			
			with (gb) {
				instance_destroy(localGun);
				instance_destroy();
			}
			instance_create_layer(blockX, blockY, "Instances", damageBuff);
		}
		
		if (xPress && unlocks[1]){
			var blockX = gb.x;
			var blockY = gb.y;
			audio_play_sound(select, 10, false);
			
			with (gb) {
				instance_destroy(localGun);
				instance_destroy();
			}
			instance_create_layer(blockX, blockY, "Instances", speedBuff);
		}
		
		if (bPress) {
			gb.buildSelected = false;	
		}
		
		
	} else if (distance_to_object(gb) < selectDistance){
		if (yPress){
			with (gb) {
				showInfo = !showInfo;
			}
		}		

		if (aPress){
			with (gb) {
				audio_play_sound(select, 10, false);
				if (localSelected) with (blockMenu) { instance_destroy() };
				blockMenu = noone;
				if (!localSelected) blockMenu = instance_create_layer(x, y, "Menu", oMove);
				localSelected = !localSelected;
			}
		}
		
		if (bPress) {
			with (gb) {
				if (localSelected) with (blockMenu) { instance_destroy() };
				localSelected = false;
				blockMenu = noone;
				buildSelected = !buildSelected;
			}
		}

		if (xPress){
			with (gb) {
				if (level < maxLevel && global.points >= 10 * level) {
					global.points -= 10 * level;
					audio_play_sound(levelUp, 10, false);
					level += 1;
				}
			}
		}
	} else if (distance_to_object(gb) > selectDistance) {
        if (bPress) {
            if (global.points >= 10) {
                instance_create_layer(x,y,"Instances",oGunBlock);
                global.points -= oGameController.gunCost;
            }
        }    
	}
	
}

