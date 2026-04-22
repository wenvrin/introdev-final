/// @description Insert description here
// You can write your code in this editor
//if (sec<240) image_blend = purple;
//else if (sec>=240) && (sec<300) image_blend = pink;
//else image_blend = blue;
//image_xscale = 2;
//image_yscale = 2;

if (obj_star_manager.falling) {
	//show_debug_message("falling");
	y+=1;
	
	if (obj_star_manager.num_collects mod 2 == 0) x += fall_dir;
	else x -= fall_dir;
	
}
draw_self();

if (obj_player_1.won) || (obj_player_2.won) instance_destroy(self);


