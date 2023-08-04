if (place_meeting(x,y,oMouse) && mouse_check_button_pressed(mb_left) && clickable) {
	oMacro.level = levelgoto;
	audio_play_sound(sndFly,3,false)
}
if ((levelgoto > 2) && (oMacro.max_evolution <= 18)) {
	clickable = false;
	image_alpha = 0;
} else if ((levelgoto > 1) && (oMacro.max_evolution <= 12)) {
	clickable = false;
	image_alpha = 0;
} else if (oMacro.max_evolution <= 6) {
	clickable = false;
	image_alpha = 0;

}else {
	if (oMenu.menu == true or oMenuUpgrades.upgradeMenu == true) {
	clickable = false;
	} else clickable = true;
	image_alpha = 1;
}
if (oMacro.level == levelgoto) {
	sprite_index = sButton2;
} else sprite_index = sButton;