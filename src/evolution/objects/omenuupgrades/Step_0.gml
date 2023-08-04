if (setup == false && upgradeMenu == true) {
	for (var i = 0; i < 6; i++) {
		with(instance_create_layer(50,(i)*175+50,"menu_buttons",oUpgrade)){
			option = i;
			
			
		}
	}
	for (var i = 6; i < 8; i++) {
		with(instance_create_layer(1000,(i-6)*175+50,"menu_buttons",oUpgrade)){
			option = i;
			
			
		}
	}
	setup = true;

} 
if (upgradeMenu==false) setup = false;

price[0] = round(500*(power(2.5,upgradeLvl[0])))
price[1] = round(550*(power(2.5,upgradeLvl[1])))
price[2] = round(100000*(power(2.5,upgradeLvl[2])))
price[3] = round(600*(power(2.5,upgradeLvl[3])))
price[4] = round(750*(power(2.5,upgradeLvl[4])))
price[5] = round(400*(power(2.5,upgradeLvl[5])))
price[6] = round(400*(power(2.5,upgradeLvl[6])))
price[7] = round(750*(power(6,upgradeLvl[7])));