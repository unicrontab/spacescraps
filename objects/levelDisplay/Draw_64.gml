draw_set_font(base);
draw_set_valign(fa_middle);
draw_set_halign(fa_center);

var pointColor = $06a4ff;
var xPos = camera_get_view_width(view_camera[3]) / 2;
var yPos = camera_get_view_height(view_camera[3]) /2;

show_debug_message(string(xPos));
show_debug_message(string(yPos));

draw_text_transformed_color(xPos, yPos, "LEVEL " + string(oGameController.currentLevel),2,2, image_angle, pointColor, pointColor, pointColor, pointColor, 1);
