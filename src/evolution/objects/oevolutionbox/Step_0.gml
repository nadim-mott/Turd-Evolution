if (breakable == true && oMenu.menu == false && oMenuUpgrades.upgradeMenu == false) {
	if (place_meeting(x,y,oMouse)&& mouse_check_button(mb_left) && oMouse.holding == noone) {
		randomizing = true;
	}
}
if (randomizing == true) {
	image_index = 1;
	randomCounter --;
} else image_index = 0;


if (randomCounter <= 0) {
	instance_create_layer(x,y,"monsters",oPopup);
	with(instance_create_layer(x,y, "monsters",oMonster)){
		evolution = other.monster_evo;
		sprite_index = sPhase1;
		oMacro.levelCount[get_monster_occupiedLevel(evolution)] ++;
		oMacro.creatureCount[evolution] ++;
	}
	instance_destroy();	
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