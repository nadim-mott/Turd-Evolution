image_index = berryType;
if(!drag){
	depth = -(y+((sprite_height)/2));
} else if (draggable &&oMenu.menu == false){
	depth = -99999
}



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
	yscale_goto = 0.75
	xscale_goto = 0.75
	alphagoto = 1;
}