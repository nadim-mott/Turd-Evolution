if (oMenu.menu) {
	draw_self();
	if (clipboard_get_text() =="WOW! I discovered a "+ oMenu.turdname[oMenu.selected] + " - " + oMenu.turdescription[oMenu.selected] + " Play Turd Evolution too! #TurdEvolution https://namfo.itch.io/turd-evolution") {
		draw_set_color(c_black);
		draw_text_transformed(x-15,y+130,"Text copied!",2,2,0)
	}
}

