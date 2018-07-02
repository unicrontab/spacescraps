
player = instance_nearest(x,y,oPlayer);

if (distance_to_object(player) < radius && levelDisplay.playerSelected[player.playerId] == false) {
	selected = true;
	with (instance_create_layer(player.x,player.y, "Instances", buffObject)){
		player = other.player;
		levelDisplay.playerSelected[player.playerId] = true;
	}
	instance_destroy();
	
}
