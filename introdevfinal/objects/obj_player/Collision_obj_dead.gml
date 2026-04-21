/// @description Insert description here
// You can write your code in this editor

if !(flyingUp) {
	knockdown = false;
	bouncing = false;
	// INCORRECT SOUNDS
	//audio_play_sound(snd_death,101,0);
	audio_play_sound(snd_hit, 101, 0);
	//create 15 dust particles
	part_particles_create(parts, x, y+10, fly, 10);
	//start the screen shake alarm
	alarm[0] = shake_time;
	//start the animation timer
	//squish_timer += squish_speed;
	if (player == obj_player_1) p1 -= 1;
	else p2 -= 1;
	dead = true; 
	alarm[1] = 100;
}
