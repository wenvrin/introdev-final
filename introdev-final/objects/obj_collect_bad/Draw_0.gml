if (obj_star_manager.falling) {
	y+=1;
	
	if (obj_star_manager.num_collects mod 2 == 0) x += fall_dir;
	else x -= fall_dir;
	
}
draw_self();

if (obj_player_1.won) || (obj_player_2.won) instance_destroy(self);

