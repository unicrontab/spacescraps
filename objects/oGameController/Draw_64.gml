draw_set_font(base);
draw_text_transformed(x + 20, y, string(global.currentScore),1,1, image_angle);

var pointColor = $06a4ff;
draw_text_transformed_color(x + 20, y+40, string(global.points),1,1, image_angle, pointColor, pointColor, pointColor, pointColor, 1);

debugGamepad(true);