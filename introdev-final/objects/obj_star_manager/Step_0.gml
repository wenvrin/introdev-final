num_collects = instance_number(obj_collect)+instance_number(obj_collect_bad);
frames_since_collect += 1;

x = random_range(50, room_width-50);
y = -20;

if (falling) {
	if (frames_since_collect > frames_bt_collect) {
		/////////////////////////////////// create red notes ///////////////////////////////////
		if (num_collects % 3 == 0) {
			
			instance_create_layer(
				x,
				camera_get_view_y(view_camera[0]),
				"Instances",
				obj_note_red
			);
			frames_since_collect = 0;
		}
		else {
			/////////////////////////////////// create collects ///////////////////////////////////
			if (instance_exists(obj_collect)) {
				if (obj_collect.sec<240) {
					instance_create_layer(
						x,
						camera_get_view_y(view_camera[0]),
						"Instances",
						obj_collect
					);
					obj_collect.image_index = 0;
				} else if (obj_collect.sec>=240) && (obj_collect.sec<300){
					instance_create_layer(
						x,
						camera_get_view_y(view_camera[0]),
						"Instances",
						obj_collect
					);
					obj_collect.image_index = 1;
				} else {
					instance_create_layer(
						x,
						camera_get_view_y(view_camera[0]),
						"Instances",
						obj_collect
					);
					obj_collect.image_index = 2;
				}
			} else {
					instance_create_layer(
						x,
						camera_get_view_y(view_camera[0]),
						"Instances",
						obj_collect
					);
				}
			
			frames_since_collect = 0;
		}
	}
}