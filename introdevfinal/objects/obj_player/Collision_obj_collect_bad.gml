/// @description Insert description here
// You can write your code in this editor

if (bouncing) {
	note_color = red;
	part_type_colour1(star, note_color);
	obj_gui.subtractfive = true;
	
	////// INCORRECT SOUNDS (uncomment when sound is added)
	//audio_play_sound(snd_collect_red, 100, 0);
	
	audio_play_sound(snd_bad, 100, 0, 0.2);
	audio_play_sound(snd_hit, 100, 0, 1);
	
	//start the screen shake alarm
	alarm[0] = shake_time;
	
	part_particles_create(parts, other.x, other.y, star, 100);
	
	alarm[3] = 30;

	show_debug_message("subtractfive:"+string(obj_gui.subtractfive));
	

	obj_gui.penalty = other.sec;
	//if obj_gui.penalty > 0 obj_gui.penalty *= -1;

	//show_debug_message("bonus:"+string(obj_gui.bonus/60));
	
	obj_gui.timer+=obj_gui.penalty;
	
	//draw_set_font(fnt_title);
	//draw_set_color(c_red);
	//draw_text(room_width/2,120,"-5 sec.");
	instance_destroy(other);
}






