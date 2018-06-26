timeout -= 1;
image_alpha -= 0.005;
if (timeout < 0) {
	instance_destroy();
}
