// Config
maxSpeed = 2;
movespeed = 0.05;


// Ephem
xspeed = 0;
yspeed = 0;
building = false;
gamepad = noone;
h_axis = 0;
v_axis = 0;
tilemap = layer_tilemap_get_id("Tiles_1");

detectAndSetupGamepad();
shield = instance_create_layer(x,y,"Shield",oShield);