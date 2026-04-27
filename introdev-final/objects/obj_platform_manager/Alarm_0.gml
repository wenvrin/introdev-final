if row <= 10 {
	num_row += 1;
		
	if(num_row < max_platforms) {
		if !(instance_place(x,y,obj_platform)) {
			
			var new_platform = instance_create_layer(
				x,
				y,
				"Instances",
				obj_platform
			);
			
		}
		x += spacing_x;
		y -= spacing_y;
	} else if (num_row == max_platforms) {
		row += 1;
		spacing_x = spacing_x * -1;
		num_row = 1;
		var new_platform = instance_create_layer(
				x,
				y,
				"Instances",
				obj_platform
			);
		x += spacing_x;
		y -= spacing_y;
	}
}

frames_since_platform = 0;
