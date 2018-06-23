damage = 1;
onSelfGun = false;
armed = true;
if (place_meeting(x,y,oGunBlock)) {
	armed = false;	
	onSelfGun = true;
}
