movementTimer = 120;
xscale_goto = 0.75;
yscale_goto = 0.75;
x_min = 133;
x_max = 1744;
y_min = 564;
y_max = 1050;
breakable = true;

oMacro.levelCount[0] ++;
oMacro.creatureCount[0] ++;

alphagoto = image_alpha;
if (oMacro.level != 0) {
	image_alpha = 0;
}
else image_alpha = 1;
x_goto = irandom_range(x_min,x_max);
y_goto = irandom_range(y_min,y_max);
image_yscale = 2;
x = x_goto;
y = y_goto-1480