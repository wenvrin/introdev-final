if ((obj_player_1.won) || (obj_player_2.won)) && (keyboard_check_pressed(vk_space)) {
	game_restart();
}

gtimer -= 1;

if (gtimer <= 0) {
	gtimer = 0;
	//obj_fade.image_alpha = clamp(obj_fade.image_alpha + 0.01, 0, 1);
	//if obj_fade.image_alpha == 1 
	room_goto(gameover);
}