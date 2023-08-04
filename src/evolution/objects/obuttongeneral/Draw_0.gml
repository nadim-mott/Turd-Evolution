if (button_function <= oMacro.max_evolution) {
	var _width = 150/sprite_get_width(get_monster_sprite(button_function));
	draw_self();
	var _x_offset = sprite_get_xoffset(get_monster_sprite(button_function))*_width
	var _y_offset = sprite_get_yoffset(get_monster_sprite(button_function))*_width
	draw_sprite_ext(get_monster_sprite(button_function),1,x+_x_offset,y+_y_offset,_width,_width,0,c_white,1);
	draw_set_color(c_black);
	draw_set_font(fntCoins);
	draw_set_halign(fa_left);
	draw_text_ext_transformed(x+175,y+50,oMenu.turdname[button_function],10,100,3,3,0)
	clickable= true;
} else {
	draw_self();
	draw_set_color(c_black);
	draw_set_font(fntCoins);
	draw_set_halign(fa_left);
	draw_text_ext_transformed(x+175,y+50,"???",30,300,3,3,0);
	clickable = false;
}