if (place_meeting(x,y,oMouse) && mouse_check_button_pressed(mb_left) && clickable) {
	if (oMenuUpgrades.price[option] <= global.coins && oMenuUpgrades.upgradeLvl[option] < oMenuUpgrades.upgradeMax[option]) {
		audio_play_sound(sndCash,2,false);
		global.coins -= oMenuUpgrades.price[option];	
		oMenuUpgrades.upgradeLvl[option] += 1;
	}
}
switch (option) {
	case 0:
		info = string((10 - oMenuUpgrades.upgradeLvl[0])) + " seconds";
		break;
	case 1:
		info = string(((oMenuUpgrades.upgradeLvl[1]*0.5)+2)) + " hours";
		break;
	case 2:
		info = "Level " + string(oMenuUpgrades.upgradeLvl[2]+1);
		break;
	case 3:
		info = string((10 - oMenuUpgrades.upgradeLvl[3])) + " seconds";
		break;
	case 4:
		info = "Every " + string(oMenuUpgrades.upgradeLvl[4]) + " crates";
		break;
	case 5:
		info = string(120 - 10*oMenuUpgrades.upgradeLvl[5]) + " seconds";
		break;
	case 6:
		info = string(10 + 2*oMenuUpgrades.upgradeLvl[6]) + " seconds";
		break;
	case 7:
		info = string(oMenuUpgrades.upgradeLvl[7]+1) + " berries";
		break;
}

if (oMenuUpgrades.upgradeMenu == false){
	instance_destroy();
}
