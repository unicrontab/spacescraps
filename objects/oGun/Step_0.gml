var closestDamageBuff = instance_nearest(x,y, damageBuff);
if (closestDamageBuff && distance_to_object(damageBuff) < closestDamageBuff.radius) {
	damageMultiplier = closestDamageBuff.multiplier;	
} else {
	damageMultiplier = baseDamageMultiplier;	
}


var collidedEnemy = collision_circle(x, y, 100, oEnemy, false, true);
if (collidedEnemy && global.paused == false) {
	image_angle = point_direction(x, y, collidedEnemy.x, collidedEnemy.y);
	firingDelay = firingDelay - 1;
	if (firingDelay < 0) {
		firingDelay	= 15;
		

		var xpos = x + lengthdir_x(5, image_angle);
		var ypos = y + lengthdir_y(5, image_angle);
		
		with (instance_create_layer(xpos, ypos, "Instances", oPlasma)) {
			damage = 2 * (other.level * other.level) * other.damageMultiplier;
			speed = 8;
			direction = other.image_angle;
			image_angle = direction;
		}
	}
}