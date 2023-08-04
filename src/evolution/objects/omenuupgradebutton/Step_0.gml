if (place_meeting(x,y,oMouse) && mouse_check_button_pressed(mb_left) && clickable) {
	audio_play_sound(sndOpen,2,false)
	if oMenuUpgrades.upgradeMenu == true{
		oMenuUpgrades.upgradeMenu = false
	} else oMenuUpgrades.upgradeMenu = true;
}
image_index = oMenuUpgrades.upgradeMenu+1

if (oMenu.menu == false) {
	clickable = true;
} else clickable = false