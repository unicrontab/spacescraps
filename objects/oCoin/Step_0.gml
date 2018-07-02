timeout -= 0.01;
opacity -= 0.005;
image_alpha = opacity;
if (timeout <= 0 || opacity <= 0) {
	image_alpha = 0;
	instance_destroy();
}
var delay = 4;

var closestSpeedBuff = instance_nearest(x,y,speedBuff);
if (closestSpeedBuff && distance_to_object(closestSpeedBuff) < closestSpeedBuff.radius) {
	speed = startingSpeed * closestSpeedBuff.multiplier;	
} else {
	speed = startingSpeed;	
}



stepIndex += 1;
if (opacity > 0.5 && stepIndex > delay) {
	stepIndex = 0;
	with(instance_create_layer(x,y,"Particles",oEnemySpray)){
		speed = 0.1;
	}
}
