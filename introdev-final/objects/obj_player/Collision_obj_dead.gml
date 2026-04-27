if !(flyingUp) {
	knockdown = false;
	bouncing = false;

	audio_play_sound(snd_hit, 101, 0);
	
	//create 15 dust particles
	part_particles_create(parts, x, y+10, fly, 10);
	
	//start the screen shake alarm
	alarm[0] = shake_time;

	dead = true; 
	alarm[1] = 100;
}
