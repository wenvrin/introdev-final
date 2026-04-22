/// @description Insert description here
// You can write your code in this editor
//if ((instance_place(obj_player.x, obj_player.y, obj_collect)) && (instance_place(obj_player.x, obj_player.y,obj_collect_bad))) {
//	obj_gui.bonus = obj_collect.sec+obj_collect_bad.sec;
//	show_debug_message("bonus:"+string(obj_gui.bonus));
//} else if (instance_place(obj_player.x, obj_player.y, obj_collect)) {
//	obj_gui.bonus = obj_collect.sec;
//	show_debug_message("bonus:"+string(obj_gui.bonus));
//} else if (instance_place(obj_player.x, obj_player.y, obj_collect_bad)) {
//	obj_gui.bonus = obj_collect_bad.sec;
//	show_debug_message("bonus:"+string(obj_gui.bonus));
//} else {
//	obj_gui.bonus = 0;
//	show_debug_message("no bonus:(");
//}

 if ((obj_player_1.won) || (obj_player_2.won)) && (keyboard_check_pressed(vk_space)) {
	 game_restart();
 }

timer -= 1

if (timer <= 0)
{
	timer = 0;
	//obj_fade.image_alpha = clamp(obj_fade.image_alpha + 0.01, 0, 1);
	//if obj_fade.image_alpha == 1 
	room_goto(gameover);
}