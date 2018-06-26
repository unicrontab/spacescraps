timeout -= 1;
image_alpha -= fadeSpeed;

if (timeout <= 0 || opacity <= 0) {
	image_alpha = 0;
	instance_destroy();
}
