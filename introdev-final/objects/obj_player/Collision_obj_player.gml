if (bouncing) {
	if accel > other.accel {
		image_index = 3;
		knockdown = true;
		x_vel = max(0, x_vel + 18);
		y_vel = max(0, y_vel + 24);
		other.x_vel = -18;
		other.y_vel = -24;
		part_particles_create(parts, x, y, fly, 10);
		//start the screen shake alarm
		alarm[0] = 5;
		//start the animation timer
		//squish_timer += squish_speed;
	} else {
		audio_play_sound(impactGlass_heavy_002, 99, 0);
		if y_vel >= 0 image_index = 3;
		else image_index = 0;
		other.knockdown = true;
		other.x_vel = min(0, other.x_vel + 18);
		other.y_vel = min(0, other.y_vel + 24);
		x_vel = -18;
		y_vel = -24;
		part_particles_create(parts, x, y, fly, 10);
		//start the screen shake alarm
		alarm[0] = 5;
		//start the animation timer
		//squish_timer += squish_speed;
	}
}