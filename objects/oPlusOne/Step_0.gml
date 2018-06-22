timeout -= 0.01;
opacity -= 0.01;
image_alpha = opacity;
if (timeout <= 0 || opacity <= 0) {
	image_alpha = 0;
	instance_destroy();
}
