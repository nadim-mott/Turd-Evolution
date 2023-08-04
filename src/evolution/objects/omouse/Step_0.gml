x = mouse_x;
y = mouse_y;


monsterPriority = instance_nearest(x,y,oMonster);
if (place_meeting(x,y,monsterPriority) && mouse_check_button_pressed(mb_left) && holding ==noone && monsterPriority.draggable == true && !oMenu.menu && !oMenuUpgrades.upgradeMenu) {
	holding = monsterPriority;
	with(monsterPriority){
		idle = false;
		coin_effect_timer = 5;
		global.coins += get_monster_coinspersec(evolution)*2;
		audio_play_sound(sndFart1,4,false);
	}
	hold_timer = hold_timer_max;
} else if (place_meeting(x,y,oBerry) && mouse_check_button_pressed(mb_left) && holding ==noone && oBerry.draggable == true && !oMenu.menu && !oMenuUpgrades.upgradeMenu) {
	holding = oBerry;
	with(oBerry) {
		drag = true;
	}
	hold_timer = hold_timer_max;
}

if (holding != noone) {
	if (hold_timer <= 0){
		image_index = 2;
	} else{
		hold_timer --;
		image_index = 1;
	}
} else if (mouse_check_button(mb_left)) {
	image_index = 1;
} else image_index = 0;