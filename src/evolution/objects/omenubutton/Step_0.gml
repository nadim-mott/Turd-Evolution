if (place_meeting(x,y,oMouse) && mouse_check_button_pressed(mb_left) && clickable) {
	audio_play_sound(sndOpen,2,false)
	if oMenu.menu == true{
		oMenu.menu = false
	} else oMenu.menu = true;
}
image_index = oMenu.menu+1

if (oMenuUpgrades.upgradeMenu == false) {
	clickable = true;
} else clickable = false