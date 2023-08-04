/// @desc Save Game

// make save data

var _saveData = {
	nCreature : creatureCount,
	nBought : nBought,
	coins : global.coins,
	godLevel : global.godLevel,
	//time passed calculation
	current_date_time : date_current_datetime(),
	coinspersec : coins_per_sec,
	upgradeLvl : oMenuUpgrades.upgradeLvl
	
	//v1.2
	
	
}

var _string = json_stringify(_saveData);
var _buffer = buffer_create(string_byte_length(_string) +1, buffer_fixed, 1);
buffer_write(_buffer, buffer_string, _string);
buffer_save(_buffer,"savedgame.save");
buffer_delete(_buffer);

show_debug_message("Game saved! " + _string);