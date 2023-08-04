if (keyboard_check(vk_escape)) {
	escape_timer -= 1;
} else {
	escape_timer = 240;
	image_index = 1;
}
if (escape_timer <= 0) game_end();