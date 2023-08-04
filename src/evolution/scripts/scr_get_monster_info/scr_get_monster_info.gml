// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_monster_occupiedLevel(_evolution){
	if (_evolution <= 6) {
		return 0;
	} else if (_evolution <= 12) {
		return 1;
	} else if (_evolution <= 18) {
		return 2;
	} else return 3;
}

function get_monster_coinspersec(_evolution) {
	switch (_evolution) {
		case 0:
			return 0;
		break;
		case 1:
			return 0.5;
		break;
		case 2:
			return 1.5;
		break;
		case 3:
			return 4;
		break;
		case 4:
			return 9.5;
		break;
		case 5:
			return 21;
		break;
		case 6:
			return 44.5;
		break;
		case 7:
			return 92;
		break;
		case 8:
			return 187.5;
		break;
		case 9:
			return 379;
		break;
		case 10:
			return 762.5;
		break;
		case 11:
			return 1530;
		break;
		case 12:
			return 3065.5;
		break;
		case 13:
			return 6137;
		break;
		case 14:
			return 12280.5;
		break;
		case 15:
			return 24568;
		break;
		case 16:
			return 49143.5;
		break;
		case 17:
			return 98295;
		break;
		case 18:
			return 196598.5;
		break;
	}
	return 393206 *global.godLevel
}

function get_monster_sprite(_evolution) {
	switch (_evolution) {
		case 0:
			return sBox;
		break;
		case 1:
			return sPhase1;
		break;
		case 2:
			return sPhase2;
		break;
		case 3:
			return sPhase3;
		break;
		case 4:
			return sPhase4;
		break;
		case 5:
			return sPhase5;
		break;
		case 6:
			return sPhase6;
		break;
		case 7:
			return sPhase7;
		break;
		case 8:
			return sPhase8;
		break;
		case 9:
			return sPhase9;
		break;
		case 10:
			return sPhase10;
		break;
		case 11:
			return sPhase11;
		break;
		case 12:
			return sPhase12;
		break;
		case 13:
			return sPhase13;
		break;
		case 14:
			return sPhase14;
		break;
		case 15:
			return sPhase15;
		break;
		case 16:
			return sPhase16;
		break;
		case 17:
			return sPhase17;
		break;
		case 18:
			return sPhase18;
		break;
	}
	return sPhaseGod;
}