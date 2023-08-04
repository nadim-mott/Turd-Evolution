if (other.occupiedLevel == 0 && drag && draggable &&oMenu.menu == false && oMenuUpgrades.upgradeMenu == false) {
	if (mouse_check_button_released(mb_left)) {
		with(other) {
			berryTimer = oMacro.effectTimerMax
			berried = true;
			berryType = oMacro.berryType
		}
		oMouse.holding = noone;
		oMacro.timer_berry = oMacro.timer_berry_max;
		oMacro.berryType = irandom(oMenuUpgrades.upgradeLvl[7]);
		audio_play_sound(sndChew,3,false)
		instance_destroy()

	}
}