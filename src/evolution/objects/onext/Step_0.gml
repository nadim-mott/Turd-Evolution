if (place_meeting(x,y,oMouse) && mouse_check_button_pressed(mb_left) && clickable) {
	if (oMenu.page == 0) {
		oMenu.page = 1;
		oMenu.setup = false;
		audio_play_sound(sndPage,3,false)
	}else {
		oMenu.page = 0;
		oMenu.setup = false;
		audio_play_sound(sndPage,3,false)
	}
}

if (oMenu.menu == false or (oMenu.page == 1 && image_xscale == 1) or (oMenu.page == 0 && image_xscale == -1)){
	instance_destroy();
}
