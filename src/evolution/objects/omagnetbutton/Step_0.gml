if (place_meeting(x,y,oMouse) && mouse_check_button_pressed(mb_left) && clickable) {
	if (oMacro.magnet == true) {
		oMacro.magnet = false;
	} else if (oMenuUpgrades.upgradeLvl[3]>0)oMacro.magnet =true;
}
image_index = oMacro.magnet+1
if (oMenu.menu == true or oMenuUpgrades.upgradeMenu == true) {
	clickable = false;
} else clickable = true;