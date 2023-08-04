draw_self()
if (((randomCounter mod 7) == 0) && randomCounter > 30){
	var _initial = monster_evo
	while (monster_evo == _initial) {
		monster_evo = irandom_range(1,max(oMacro.max_evolution-2,1));
	}
	audio_play_sound(sndTick,1,false)
	monster_sprite = get_monster_sprite(monster_evo);
}
var _width = 180/sprite_get_width(monster_sprite);
draw_self();
var _y_offset = sprite_get_yoffset(monster_sprite)*_width

if(randomizing && oMacro.level == 0){
	draw_sprite_ext(monster_sprite,0,x,y+_y_offset-206,_width,_width,0,c_white,1)
}
