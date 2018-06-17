with (other) {
	hp -= 1;	
	repeat(10) instance_create_layer(x,y,"Particles",oEnemySpray);
}
instance_destroy();