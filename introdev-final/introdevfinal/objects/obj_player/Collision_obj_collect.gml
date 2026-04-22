/// @description Insert description here
// You can write your code in this editor

if (bouncing) {
	if (player = obj_player_1) note_color = orange;
	else note_color = pink;
	part_type_colour1(star, note_color);
	obj_gui.addingfive = true;
	
	////// INCORRECT SOUNDS (uncomment when audio is added)
	//if (other.sec<240) audio_play_sound(snd_collect_purple, 100, 0);
	//else if (other.sec>=240) && (other.sec<300) audio_play_sound(snd_collect_pink, 100, 0);
	//else audio_play_sound(snd_collect_blue, 100, 0);
	
	var _random_index = irandom(array_length(jump_snd) - 1);
	var _playsound = jump_snd[_random_index];
	audio_play_sound(_playsound, 100, 0);
	part_particles_create(parts, other.x, other.y, star, 100);
	
	alarm[3] = 30;

	show_debug_message("addingfive:"+string(obj_gui.addingfive));
	
	obj_gui.bonus = other.sec;
	//if obj_gui.bonus < 0 obj_gui.bonus *= -1;
	
	//show_debug_message("bonus:"+string(obj_gui.bonus/60));
	
	obj_gui.timer+=obj_gui.bonus;
	instance_destroy(other);
	
}






