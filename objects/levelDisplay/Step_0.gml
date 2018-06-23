timeout -= 1;
if (timeout < 0) {
	instance_destroy();
}
