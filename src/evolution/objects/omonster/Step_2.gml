if (!idle) {
	yscale_goto = 0.50;
	x_goto = oMouse.x;
	y_goto = oMouse.y;
	if (mouse_check_button_released(mb_left)) {
		oMouse.holding = noone;
		idle = true;
	}
}