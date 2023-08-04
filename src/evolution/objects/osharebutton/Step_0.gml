if (place_meeting(x,y,oMouse) && mouse_check_button_pressed(mb_left) && clickable) {
	if (oMenu.menu == true) {
		clipboard_set_text("WOW! I discovered a "+ oMenu.turdname[oMenu.selected] + " - " + oMenu.turdescription[oMenu.selected] + " Play Turd Evolution too! #TurdEvolution https://namfo.itch.io/turd-evolution")
	}
}

