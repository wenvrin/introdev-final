/// @description Insert description here
// You can write your code in this editor

if y_vel < 0 {
	if (obj_player_1.y<=obj_player_2.y) obj_player_1.won = true;
	else obj_player_2.won = true;
	//show_debug_message("player 1 won"+string(winner));
	if (obj_player_1.won == true) {
		obj_player_2.dead = true;
		winner = "Player 1";
		obj_player_2.y = ystart;
		obj_player_2.canmove = false;
	}
	else if (obj_player_2.won == true) {
		obj_player_1.dead = true;
		obj_player_1.y = ystart;
		obj_player_1.canmove = false;
		//if (obj_player_2.y > -20) 
	}
	currenty_won = y;
	targety_won = 130; //139
	var tx = room_width / 2;
	var ty = -50;
	if (point_distance(x, y, tx, ty) > 8){
		move_towards_point(tx, ty, 3);
		
	} else {
	    speed = 0;
	    x = tx;
	    y = ty;
	}
	//show_debug_message("Winner:"+string(winner));
	
}

