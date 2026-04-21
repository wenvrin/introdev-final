/// @description Insert description here
// You can write your code in this editor

//if (x>_prev_x) var dirx = 1;
//else if (x<_prev_x) var dirx = -1;
//else var dirx = 0;

if (won) {
	if  (winner == "Player 1") {
			if (_prev_x < x) image_index = 4;
			else if (_prev_x >= x) {
				image_index = 4;
				image_xscale = -1;
			} 
		} else {
			if (_prev_x < x) image_index = 4;
			else if (_prev_x >= x) {
				image_index = 4;
				image_xscale = -1;
			}
		}
}