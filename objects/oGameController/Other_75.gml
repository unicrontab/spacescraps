if (!gamepad_is_connected(global.playerGamepads[1])) {
	with(oPlayer2) {
		instance_destroy(shield);
		instance_destroy();
	}
};
