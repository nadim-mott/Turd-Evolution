draw_set_color(c_aqua);
draw_rectangle(20,20,100,100,false);
drawRectangleWidth(20,20,100,100,c_black,5);
var _sprite_width = sprite_get_width(sBox);
var _width = 80/sprite_get_width(sBox);
draw_sprite_part_ext(sBox,0,0,(_sprite_width*(timer/timer_max)),_sprite_width,_sprite_width,20,20+_width*((_sprite_width*(timer/timer_max))),_width,_width,c_white,1);

//-----Berry---------
draw_set_color(c_aqua);
draw_rectangle(20,120,100,200,false);
drawRectangleWidth(20,120,100,200,c_black,5);
var _sprite_width = sprite_get_width(sBerryStem);
var _width = 80/sprite_get_width(sBerryStem);
draw_sprite_part_ext(sBerryStem,berryType,0,max((_sprite_width*(timer_berry/timer_berry_max)),0),_sprite_width,_sprite_width,20,120+max(_width*((_sprite_width*(timer_berry/timer_berry_max))),0),_width,_width,c_white,1);


if (timer <= 0 && (levelCount[0] >= creature_max)) {
	draw_set_halign(fa_left)
	draw_set_font(fntFranklin)
	draw_set_color(c_red);
	draw_text_transformed(21,45,"FULL",2,2,0);
}

// -----Magnet---------
if (magnet) {
	if (magnet_timer <= 0){
		var i = 1
		var _monster1 = noone;
		var _monster2 = noone;
		while (i< levelCount[0]) {
			if (i < levelCount[0]) {
				with (instance_nth_nearest(x,y,oMonster,i)){
					if(oMacro.creatureCount[evolution] >=2 && occupiedLevel ==0 && _monster1 ==noone) {
						_monster1 = self;
					} else if (_monster1 != noone){
						if(evolution == _monster1.evolution) {
							audio_play_sound(sndMagnet,5,false);
							_monster2 = self;
							break;
						}
					}
				}
			}
			i++
		}
	
		with (_monster1) {
			x_goto = oMacro.x;
			y_goto = oMacro.y;
			sucked = true;
			suckedEntity = _monster2;
		}
		with (_monster2) {
			x_goto = oMacro.x;
			y_goto = oMacro.y;
		
		}

		magnet_timer = magnet_timer_max
		x = irandom_range(x_min,x_max);
		y =irandom_range(y_min,y_max);
	}
	magnet_timer --;
}


draw_set_halign(fa_center)
draw_set_font(fntFranklin)
draw_set_color(c_black);
draw_text_colour_outline(960,20,scientific_notation(global.coins),c_black,c_black,1,c_white,c_white,1,3,10,5,5,0);
if (level == 3) draw_text_colour_outline(960,100,"Level: "+string(global.godLevel),c_black,c_black,1,c_white,c_white,1,3,10,5,5,0);