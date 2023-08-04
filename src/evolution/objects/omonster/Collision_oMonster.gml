if (!idle && draggable &&oMenu.menu == false && oMenuUpgrades.upgradeMenu == false) or (sucked && draggable) {
	if (mouse_check_button_released(mb_left) or sucked) {
		var _monster1 = self
		var _monster2 = other;
		if (_monster1.berried or _monster2.berried) {
			var _berry = true;
			if (_monster1.berried) {
				var _berryMonster = _monster1
			} else _berryMonster = _monster2
			
		} else _berry = false
		if (_monster1.evolution == _monster2.evolution) {
			with(instance_create_layer(x,y,"monsters",oPopup)) {
				if _berry {
					if (_berryMonster.berryType == 1) {
						image_blend = make_color_rgb(150,255,0);
						global.coins += get_monster_coinspersec(_monster1.evolution+1)*20;
					}
					
				}
			}
			if((_monster1.evolution == 18 && oMacro.creatureCount[19] == 0) or _monster1.evolution < 18) {
				with(instance_create_layer(_monster2.x,_monster2.y, "monsters",oMonster)){
					sprite_index = other.sprite_index;
					evolution = other.evolution +1
					x_goto = other.x;
					y_goto = other.y;
					y = other.y;
					x = other.x
					oMacro.levelCount[get_monster_occupiedLevel(evolution)] ++;
					oMacro.creatureCount[evolution] ++;
					if (_berry) {
						berryTimer = _berryMonster.berryTimer
						berried = true;
						berryType = _berryMonster.berryType
					}
					
				}
			} else if (_monster1.evolution == 18) global.godLevel++;
			audio_play_sound(sndFart2,3,false)
			instance_destroy(_monster1);
			instance_destroy(_monster2);
		}
		oMouse.holding = noone;
	}
	
	
}