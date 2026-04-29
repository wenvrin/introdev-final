////////////////////////////////////// ADD ///////////////////////////////////
if (bouncing) {
	if (player = obj_player_1) note_color = orange;
	else note_color = pink;
	part_type_colour1(star, note_color);
	obj_gui.addingfive = true;
	
	var _random_index = irandom(array_length(note_snd) - 1);
	var _playsound = note_snd[_random_index];
	audio_play_sound(_playsound, 100, 0);
	part_particles_create(parts, other.x, other.y, star, 100);
	
	alarm[3] = 30;

	show_debug_message("addingfive:"+string(obj_gui.addingfive));
	
	obj_gui.bonus = other.sec;
	obj_gui.timer+=obj_gui.bonus;
	instance_destroy(other);
}






