if (place_meeting(x,y,oMouse) && mouse_check_button_pressed(mb_left) && clickable) {
	oMenu.selected = button_function;
}
if (oMenu.selected == button_function) {
	image_index = 1;
} else {
	image_index = 2;
}

if (oMenu.menu == false or (oMenu.page == 1 && button_function <=10) or (oMenu.page == 0 && button_function > 10)){
	instance_destroy();
}