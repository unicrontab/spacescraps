damage = 1;
onSelfGun = false;
armed = true;
if (place_meeting(x,y,oGunBlock)) {
	armed = false;	
	onSelfGun = true;
}
plasmaSound = audio_play_sound(laser1,10, false);
audio_sound_pitch(plasmaSound, random_range(1.3,1.4));