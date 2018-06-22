var collidedEnemy = collision_circle(x, y, 100, enemy, false, true);
if (collidedEnemy) {
	image_angle = point_direction(x, y, collidedEnemy.x, collidedEnemy.y);
	firingDelay = firingDelay - 1;
	if (firingDelay < 0) {
		firingDelay	= 15;
		with (instance_create_layer(x, y, "Instances", oPlasma)) {
			if (other.deployed) damage = 2 * (level * level);
			speed = 8;
			direction = other.image_angle;
			image_angle = direction;
		}
	}
}