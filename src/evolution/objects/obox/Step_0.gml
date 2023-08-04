if (breakable == true && oMenu.menu == false && oMenuUpgrades.upgradeMenu == false) {
	if (place_meeting(x,y,oMouse)&& mouse_check_button(mb_left) && oMouse.holding == noone) {
		instance_create_layer(x,y,"monsters",oPopup);
		with(instance_create_layer(x,y, "monsters",oMonster)){
			evolution = irandom_range(1,(oMenuUpgrades.upgradeLvl[2]+1));
			sprite_index = sPhase1;
			oMacro.levelCount[get_monster_occupiedLevel(evolution)] ++;
			oMacro.creatureCount[evolution] ++;
		}
		audio_play_sound(sndCrateSmash,5,false)
		instance_destroy();
	
	}
}
if (oMacro.level != 0) {
	alphagoto = 0;
	breakable = false;
	x = 960;
	y = 540;
	image_xscale = 0;
	image_yscale = 0;
} else {
	breakable = true;
	alphagoto = 1;
	xscale_goto = 0.75;
	yscale_goto = 0.75;
}


x += (x_goto -x)/10;
y += (y_goto - y)/10;
image_alpha += (alphagoto - image_alpha)/25;
image_xscale += (xscale_goto - image_xscale)/ 10;
image_yscale += (yscale_goto - image_yscale)/ 10;