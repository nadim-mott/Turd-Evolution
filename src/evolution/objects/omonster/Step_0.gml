if(idle){
	depth = -(y+((sprite_height)/2));
} else if ((!idle && draggable &&oMenu.menu == false)){
	depth = -99999
}
if (berried) {
	switch berryType {
		case 0:
			image_blend = make_color_rgb(150,0,255);
			break;
		case 1:
			image_blend = make_color_rgb(150,255,0);
			break;
		case 2:
			image_blend = make_color_rgb(255,0,0);
			break;
	}
	berryTimer --;
	if (berryTimer <= 0) {
		if (berryType == 0) {
			if((evolution == 18 && oMacro.creatureCount[19] == 0) or evolution < 18) {
				with(instance_create_layer(x,y, "monsters",oMonster)){
					sprite_index = other.sprite_index;
					evolution = other.evolution +1
					x_goto = other.x;
					y_goto = other.y;
					y = other.y;
					x = other.x
					oMacro.levelCount[get_monster_occupiedLevel(evolution)] ++;
					oMacro.creatureCount[evolution] ++;
				}
			} else if (evolution == 18) global.godLevel++;
			oMouse.holding = noone;
			instance_destroy();
			
		}
		berryType = noone;
		berried = false;
	}

} else image_blend = c_white;

if (idle && evolution > 0) {
	movementTimer -= 1;
	if (movementTimer <= 0) {
		yscale_goto = 0.50;
		var _direction = irandom(360);
		var _length = random(160);
		x_goto += lengthdir_x(_length,_direction);
		y_goto += lengthdir_y(_length,_direction);
		movementTimer = irandom(300)
	}
}

if (draggable) {
	if (x < x_goto) {
		xscale_goto = 0.75;
	} else {
		xscale_goto = -0.75;
	}
	if (image_yscale < 0.60 || image_yscale > 2) {
		yscale_goto = 0.75;
	} 
}
occupiedLevel = get_monster_occupiedLevel(evolution);
sprite_index = get_monster_sprite(evolution);

x += (x_goto -x)/10;
y += (y_goto - y)/10;
image_xscale += (xscale_goto - image_xscale)/ yscalespeed;
image_yscale += (yscale_goto - image_yscale)/ xscalespeed;

x_goto = clamp(x_goto, x_min, x_max);
y_goto = clamp(y_goto, y_min, y_max);
image_alpha += (alphagoto - image_alpha)/5;
//verify level
if (oMacro.level > occupiedLevel) {
	alphagoto = 0;
	draggable = false;
	x = 960;
	y = 540;
	xscale_goto = 0;
	yscale_goto = 0;
	yscalespeed = 10;
} else if (oMacro.level < occupiedLevel){
	alphagoto = 0;
	draggable = false;
	xscale_goto = 10;
	yscale_goto = 10;
	yscalespeed = 10;
	
}else {
	draggable = true;
	yscalespeed = 1;
	xscalespeed = 10;
	alphagoto = 1;
}

if (sucked && suckedEntity != noone) {
	x_goto = suckedEntity.x_goto
	y_goto = suckedEntity.y_goto
}
if (suckedEntity == noone) sucked = false;




oMacro.max_evolution = max(evolution,oMacro.max_evolution);

