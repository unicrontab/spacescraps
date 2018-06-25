global.points += 1;
instance_create_layer(x ,y -5, "Particles", oPlusOne);
var coinsound = random_range(0,10);
if (coinsound > 5) {
	audio_play_sound(coinPickup, 10, false);
} else {
	audio_play_sound(coinPickup, 10, false);	
}
instance_destroy();