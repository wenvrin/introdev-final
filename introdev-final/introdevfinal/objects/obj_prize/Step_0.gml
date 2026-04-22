/// @description Insert description here
// You can write your code in this editor

if (obj_player_1.won) {
	//instance_destroy(self);
	image_xscale = 1;
	image_yscale = 1;
	instance_destroy(obj_win);
	x = obj_player_1.x
	y = obj_player_1.y+10;
} else if (obj_player_2.won) {
	image_xscale = 1;
	image_yscale = 1;
	instance_destroy(obj_win);
	x = obj_player_2.x;
	y = obj_player_2.y+10;
}
