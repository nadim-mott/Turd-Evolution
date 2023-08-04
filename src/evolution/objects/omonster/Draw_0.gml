draw_self()
if (draggable) {
	if(coin_effect_timer <=0) {
		color = make_color_rgb(irandom(255),irandom(255),irandom(255));
		if(berryType != 2) {
			coin_effect_timer +=120;
		} else {
			yscale_goto = 0.50;
			global.coins += get_monster_coinspersec(evolution)*2
			coin_effect_timer += 10
		}
	} else{
		coin_effect_timer --;
	}

	if (coin_effect_timer <= 25){
		draw_set_color(color)
		draw_text_colour_outline(x-sprite_width/4,y-sprite_height/4,"+"+string(get_monster_coinspersec(evolution)*2),color,color,1,c_black,c_black,1,2,3,3,3,0);
		//draw_text_transformed(x+sprite_width/4,y-sprite_height/4,"+"+string(get_monster_coinspersec(evolution)*2),3,3,0)
	}
}
if (sucked && oMacro.level == 0) {
	draw_sprite_ext(sMagnet,1,x_goto,y_goto,1,1,0,c_white,1)
}