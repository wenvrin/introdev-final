//gets the number of platforms in the room
num_platforms = instance_number(obj_platform);

if frames_since_platform == 0 {
	alarm[0] = frames_bt_platform;
}

//timer to make a new platform
frames_since_platform += 1;