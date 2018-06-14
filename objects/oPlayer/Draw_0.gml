draw_self();
var squareSpacing = 10;
if (building) {
	draw_sprite_ext(sgun,-1,x+squareSpacing,y - 1,1,1,image_angle, c_white, 0.3);	
	draw_sprite_ext(sgun,-1,x,y+squareSpacing - 1,1,1,image_angle, c_white, 0.3);	
	draw_sprite_ext(sgun,-1,x-squareSpacing,y - 1,1,1,image_angle, c_white, 0.3);	
	draw_sprite_ext(sgun,-1,x,y-squareSpacing - 1,1,1,image_angle, c_white, 0.3);
}