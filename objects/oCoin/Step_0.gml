timeout -= 0.01;
opacity -= 0.005;
image_alpha = opacity;
if (timeout <= 0 || opacity <= 0) {
	image_alpha = 0;
	instance_destroy();
}
var delay = 4;

if (opacity > 0.5 && stepIndex > delay) {
	with(instance_create_layer(x,y,"Particles",oEnemySpray)){
		speed = other.opacity;	
	}
	stepIndex += 1;
}
