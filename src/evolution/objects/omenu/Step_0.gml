if (setup == false && menu = true) {
	if (page ==0) {
		for (var i = 1; i <= 5; i++) {
			with(instance_create_layer(50,(i-1)*175+50,"menu_buttons",oButtonGeneral)){
				button_function = i
			}
		}
		for (var j = 6; j <=10; j++) {
			with(instance_create_layer(550,(j-6)*175+50,"menu_buttons",oButtonGeneral)){
				button_function = j
			}
		}
	}
	if (page == 1) {
		for (var i = 11; i <= 15; i++) {
			with(instance_create_layer(50,(i-11)*175+50,"menu_buttons",oButtonGeneral)){
				button_function = i
			}
		}
		for (var j = 16; j <=19; j++) {
			with(instance_create_layer(550,(j-16)*175+50,"menu_buttons",oButtonGeneral)){
				button_function = j
			}
		}
	}

	with(instance_create_layer(170,925,"menu_buttons",oNext)) {
		clickable = true;
		if (oMenu.page == 0) {
			image_xscale = 1
			x = 880;
		} else if (oMenu.page == 1) {
			image_xscale = -1
			x = 170;
		}
	}
	setup = true;

} 
if (menu==false) setup = false;
