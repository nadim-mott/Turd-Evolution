if (oMenu.menu && oMenu.selected < 19){
	draw_self();
	price = round(560*(power(2.8,oMenu.selected-1))*(power(1.15,oMacro.nBought[oMenu.selected])));
	if(price <= global.coins){
		draw_set_color(c_black)
	}else{
		draw_set_color(c_dkgray)
	}
	draw_text_ext_transformed(x+50,y+50,"Buy: " +string(scientific_notation(price)),30,300,3,3,0);
} 
