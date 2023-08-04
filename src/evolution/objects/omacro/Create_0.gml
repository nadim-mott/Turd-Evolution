timer_max = 30;
timer = timer_max;
timer_berry_max = 7200;
timer_berry = timer_berry_max;
berryType = irandom(2)
evoCrate_timer_max = 30;
evoCrate_timer = evoCrate_timer_max
effectTimerMax = 10*60;
level = 0;
global.godLevel = 1;
global.coins = 0;
coins_per_sec = 0;
coin_timer = 120;
max_evolution = 1

for (var i = 0; i < 20; i++) {
	creatureCount[i] = 0
}
for (var j = 0; j < 4; j++) {
	levelCount[j] = 0
}
for (var o = 0; o <= 19; o++) {
	nBought[o] = 0;
}

x_min = 133;
x_max = 1744;
y_min = 564;
y_max = 1050;



creature_max = 16;
magnet_timer_max = 10*60;
magnet_timer = magnet_timer_max;
magnet = false;