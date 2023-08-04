if(oMenu.menu && oMenu.selected < 19) {
	clickable = true;
	image_alpha = 1;
} else {
	clickable = false;
	image_alpha = 0;
}
if(place_meeting(x,y,oMouse) && mouse_check_button(mb_left)){
	image_index = 1;
} else{
	image_index = 2;
}

if (place_meeting(x,y,oMouse) && mouse_check_button_pressed(mb_left) && clickable) {
	if (price <= global.coins) {
		global.coins -= price;
		audio_play_sound(sndCash,2,false);
		with(instance_create_layer(x,y, "monsters",oMonster)){
			x_goto = irandom_range(x_min,x_max);
			y_goto = irandom_range(y_min,y_max);
			evolution = oMenu.selected;
			sprite_index = get_monster_sprite(oMenu.selected)
			oMacro.levelCount[get_monster_occupiedLevel(evolution)] ++;
			oMacro.creatureCount[evolution] ++;
			oMacro.nBought[evolution]++;
		}

	}
}