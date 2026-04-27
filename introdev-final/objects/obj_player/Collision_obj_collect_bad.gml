////////////////////////////////////// SUBTRACT ///////////////////////////////////
if (bouncing) {
	note_color = red;
	part_type_colour1(star, note_color);
	obj_gui.subtractfive = true;
	
	audio_play_sound(snd_bad, 100, 0, 0.2);
	audio_play_sound(snd_hit, 100, 0, 1);
	
	//start the screen shake alarm
	alarm[0] = shake_time;
	
	part_particles_create(parts, other.x, other.y, star, 100);
	
	alarm[3] = 30;

	show_debug_message("subtractfive:"+string(obj_gui.subtractfive));
	

	obj_gui.penalty = other.sec;
	obj_gui.timer+=obj_gui.penalty;
	
	instance_destroy(other);
}






