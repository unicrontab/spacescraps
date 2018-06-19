draw_set_font(base);
draw_text_transformed(x + 20, y, string(global.currentScore),1,1, image_angle);
if (oPlayer.gamepad == noone) draw_text_transformed(x + 200, y, "Press ESC to connect Controller" ,1,1, image_angle);


var pointColor = $06a4ff;
draw_text_transformed_color(x + 20, y+40, string(global.points),1,1, image_angle, pointColor, pointColor, pointColor, pointColor, 1);

var levelColor = $fffd0e;
draw_text_transformed_color(x + 20, y+80, "Level: " + string(currentLevel),1,1, image_angle, levelColor, levelColor, levelColor, levelColor, 1);


debugGamepad(false);