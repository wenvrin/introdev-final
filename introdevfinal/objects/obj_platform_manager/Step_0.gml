/// @description Insert description here
// You can write your code in this editor

//start_x = 32;
//start_y = 1280;
//prev_x = x;
//prev_y = y;

//gets the number of platforms in the room
num_platforms = instance_number(obj_platform);

if frames_since_platform == 0 {
	alarm[0] = frames_bt_platform;
}

//timer to make a new platform
frames_since_platform += 1;



//if the platform timer is up (OR there are less than 8 platforms)
//if(frames_since_platform > frames_bt_platform) { // || num_platforms < 8) {
	//if we have less than the max number of platforms IN A STAIR ROW
	//if(num_platforms < max_platforms) {
	
		//alarm[0] = frames_bt_platform;
		//show_debug_message("timers up");
		
		//var new_platform = instance_create_layer(
		//	prev_x+30,
		//	prev_y+10,
		//	"Instances",
		//	obj_platform
		//);
		
		//with(new_platform) {
		//	var tries = 0;
		//	while(tries < 10000 && collision_rectangle(
		//		x-12, y-12,
		//		x+12, y+12,
		//		obj_platform,
		//		false, true) != noone){
		//			//x = random_range(10, room_width - 53);
		//			//y = random_range(1000, room_height - 10);
		//			x = 10;
		//			y = room_height - 10;
					
		//			x += 43;
		//			y += 20;
					
		//			//for (var i = 0; i <= 5; i++) 
		//			//{ 
		//			//	x += 43;
		//			//	y += 20;
		//			//}
		//			tries += 1;
		//	}
		
		//}
		
		//x += 43;
		//y += 20;
		
	//}
//	frames_since_platform = 0;
//}
	