draw_set_color($FFFD0E);
draw_set_circle_precision(32);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(base);
draw_sprite_ext(sArrow,-1,x + 16,y, image_xscale, image_yscale, -90, c_white, image_alpha);
draw_sprite_ext(sArrow,-1,x - 16,y, image_xscale, image_yscale, 90, c_white, image_alpha);
draw_sprite_ext(sArrow,-1,x,y + 16, image_xscale, image_yscale, 180, c_white, image_alpha);
draw_sprite_ext(sArrow,-1,x,y - 16, image_xscale, image_yscale, 0, c_white, image_alpha);

