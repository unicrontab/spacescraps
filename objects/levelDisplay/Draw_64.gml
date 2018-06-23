draw_set_font(base);
draw_set_valign(fa_middle);
draw_set_halign(fa_center);

var pointColor = $06a4ff;
draw_text_transformed_color(320, 200, "LEVEL " + string(oGameController.currentLevel),2,2, image_angle, pointColor, pointColor, pointColor, pointColor, 1);
