//figure out coins per sec
coins_per_sec = 0;
for (var i = 0; i <= 19; i++) {
	coins_per_sec += creatureCount[i]*get_monster_coinspersec(i)*2;
}


if (coin_timer <= 0) {
	global.coins += coins_per_sec;
	coin_timer = 120;
} else {
	coin_timer --;
}


if (timer_berry == 0) {
	with(instance_create_layer(irandom_range(x_min,x_max),irandom_range(y_min,y_max),"monsters",oBerry)){
		berryType = other.berryType;
	}
}
timer_berry --;


if (timer <= 0 && (levelCount[0] < creature_max)) {
	if (evoCrate_timer > 0) {
		instance_create_layer(x,y,"monsters",oBox);
		evoCrate_timer --;
	}else {
		evoCrate_timer = evoCrate_timer_max;
		instance_create_layer(x,y,"monsters",oEvolutionBox);
	}
	timer = timer_max;
} else if (timer > 0) {
	timer --;
}
timer_max = (10 - oMenuUpgrades.upgradeLvl[0])*60;
timer = min(timer_max,timer);
magnet_timer_max = (10 - oMenuUpgrades.upgradeLvl[3])*60;
magnet_timer = min(magnet_timer_max,magnet_timer);
evoCrate_timer_max = (30 - oMenuUpgrades.upgradeLvl[4]*2)
evoCrate_timer = min(evoCrate_timer_max,evoCrate_timer)
timer_berry_max = (120 - 10*oMenuUpgrades.upgradeLvl[5])*60;
timer_berry = min(timer_berry,timer_berry_max)
effectTimerMax = (10 + 2*oMenuUpgrades.upgradeLvl[6])*60;