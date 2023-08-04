
draw_self();
var _width = 120/sprite_get_width(oMenuUpgrades.spr[option]);
draw_self();
var _x_offset = sprite_get_xoffset(oMenuUpgrades.spr[option])*_width
var _y_offset = sprite_get_yoffset(oMenuUpgrades.spr[option])*_width
draw_sprite_ext(oMenuUpgrades.spr[option],0,x+_x_offset,y+_y_offset,_width,_width,0,c_white,1);
image_xscale = 2
if(oMenuUpgrades.price[option] <= global.coins or oMenuUpgrades.upgradeLvl[option] == oMenuUpgrades.upgradeMax[option] ){
	draw_set_color(c_black)
}else{
	draw_set_color(c_dkgray)
}
draw_set_font(fntCoins);
draw_set_halign(fa_left);
draw_text_ext_transformed(x+175,y+30,oMenuUpgrades.upgrade[option],10,90,3,3,0);
if (oMenuUpgrades.upgradeLvl[option] != oMenuUpgrades.upgradeMax[option]){
	draw_text_ext_transformed(x+460,y+10,"cost: "+scientific_notation(string(oMenuUpgrades.price[option])),10,90,3,3,0);
} else draw_text_ext_transformed(x+460,y+10,"Max!",10,90,3,3,0);
draw_text_transformed(x+460,y+60,info,3,3,0)
draw_set_color(c_maroon)
draw_rectangle(x+10,y+110,x+890,y+140,false);
draw_set_color(c_lime)
var _progress = 880*(oMenuUpgrades.upgradeLvl[option]/oMenuUpgrades.upgradeMax[option])
draw_rectangle(x+10,y+110,x+10+_progress,y+140,false);