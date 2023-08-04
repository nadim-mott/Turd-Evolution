/// @description Load Game

//erase current game state
if (file_exists("savedgame.save")){
	with (oMonster) instance_destroy();
	with (oBox) instance_destroy();
	for (var p = 0; p < 20; p++) {
		creatureCount[p] = 0
	}
	for (var j = 0; j < 4; j++) {
		levelCount[j] = 0
	}
	for (var o = 0; o <= 19; o++) {
		nBought[o] = 0;
	}
	var _buffer = buffer_load("savedgame.save");
	var _string = buffer_read(_buffer,buffer_string);
	buffer_delete(_buffer);
	
	var _loadData = json_parse(_string);
	global.coins = _loadData.coins;
	global.godLevel = _loadData.godLevel;
	oMenuUpgrades.upgradeLvl = _loadData.upgradeLvl;
	while (array_length(oMenuUpgrades.upgradeLvl) < 9) {
		array_push(oMenuUpgrades.upgradeLvl,0)
	}

	nBought = _loadData.nBought
	while(_loadData.nCreature[0] > creatureCount[0]) {
		with(instance_create_layer(x,y, "monsters",oBox)){
			x_goto = irandom_range(x_min,x_max);
			y_goto = irandom_range(y_min,y_max);
			evolution = 0;
			sprite_index = get_monster_sprite(0)
			oMacro.levelCount[get_monster_occupiedLevel(0)] ++;
			oMacro.creatureCount[0] ++;
		}
	}
	for (var i = 1; i <= 19; i++) {
		while(_loadData.nCreature[i] > creatureCount[i]) {
			with(instance_create_layer(x,y, "monsters",oMonster)){
				x_goto = irandom_range(x_min,x_max);
				y_goto = irandom_range(y_min,y_max);
				evolution = i;
				sprite_index = get_monster_sprite(i)
				oMacro.levelCount[get_monster_occupiedLevel(evolution)] ++;
				oMacro.creatureCount[evolution] ++;
			}
		}
	}
	if(oMenuUpgrades.upgradeLvl[1] != 0) {
		with (instance_create_layer(864,704,"menu_buttons",oPlunger)) {
			coinsgained = round(min(_loadData.coinspersec*date_second_span(_loadData.current_date_time,date_current_datetime()),((oMenuUpgrades.upgradeLvl[1]*0.5)+2)*3600));
			global.coins += coinsgained;
		}
	}
	evoCrate_timer = (30 - oMenuUpgrades.upgradeLvl[4]*2)
	show_debug_message("game loaded! " + _string)
}
