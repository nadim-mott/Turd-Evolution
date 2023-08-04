if(menu == true){
	draw_set_color (c_olive);
	draw_rectangle(25,25,1895,1055,false);
	var _width = 500/sprite_get_width(get_monster_sprite(selected));
	var _x_offset = sprite_get_xoffset(get_monster_sprite(selected))*_width
	var _y_offset = sprite_get_yoffset(get_monster_sprite(selected))*_width
	draw_set_color(#FAAD81);
	draw_rectangle(x-100,y,x+635,y+750,false);
	draw_sprite_ext(get_monster_sprite(selected),1,x+_x_offset,y+_y_offset,_width,_width,0,c_white,1);
	draw_set_color(c_black);
	draw_set_halign(fa_center);
	draw_text_transformed(x+250,y+510,turdname[selected],4,4,0)
	draw_set_halign(fa_left)
	draw_text_ext_transformed(x-90,y+580,turdescription[selected],15,350,2,2,0)
}