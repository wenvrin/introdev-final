/// @description Insert description here
// You can write your code in this editor
_prev_x = x;

if (won) {
	instance_destroy(obj_platform);
	part_particles_create(parts, x, y, fly, 10);
	//start the screen shake alarm
	alarm[0] = shake_time;
	//start the animation timer
	squish_timer += squish_speed;
	obj_gui.timer = 100; 
}

//show_debug_message("my y" + string(y));
var collidewith = noone;
//var last_x = camera_get_view_x(view_camera[0]);

if (dead) {
	y = ystart;
	canmove = false;
	//camera_set_view_pos(view_camera[0], last_x, 1120);
}
else if !(dead) && !(won){
	
	if !(knockdown) canmove = true;
	if !(flyingUp) bounce_vel = -18;
	//slow the player down on the x-axis
	x_vel *= 0.9

	//adding gravity to the y velocity
	y_vel += grav;

	//r = remainder
	//add the current speed to the leftover
	//speed from the last frame
	r_y += y_vel;
	r_x += x_vel;

	//round the velocity
	//these are the pixels we're moving this frame
	var to_move_y = round(r_y);
	var to_move_x = round(r_x);

	//remove the rounded amount so that we have the leftover speed
	r_y -= to_move_y;
	r_x -= to_move_x;

	//find the distance between the player and the walls
	var dist_to_r_wall = room_width - x - 50;
	var dist_to_l_wall = x-50;

	//if we've hit the right wall
	if(to_move_x >= dist_to_r_wall) {
		audio_play_sound(impactWood_light_004, 99, 0);
		//nudge the player to the left
		x = room_width - 55;
		//reverse our velocity
		x_vel = abs(x_vel) * -1;
		//reset the remainder variable
		r_x = 0;
	} else if(to_move_x < -dist_to_l_wall) {
		audio_play_sound(impactWood_light_004, 99, 0);
		//if we've hit the left wall
		//nudge to the right
		x = 55; 
		//reverse the velocity
		x_vel = abs(x_vel);
		//reset the remainder variable
		r_x = 0;
	} else {
		//otherwise
		//move however much we need to move this frame
		x += to_move_x;
	}

	//find the y direction that we're moving
	var dir = sign(to_move_y);

	while(to_move_y != 0) {
		//track IF we've collided w/ anything
		var colliding = false;
		//track what instance we have collided with
		var collidewith = noone;
	
		if (dir < 0) {
			image_index = 0;
		} else if(dir > 0) && !(knockdown) {
			image_index = 2;
		} else if (dir == 0) image_index = 1;
	
		//check for collisions if we're moving downward
		if(dir >= 0) {
			////set to a player that may be one pixel beneath me
			//collidewith = instance_place(x, y + dir, obj_player);
		
			////if we've collided w/ a player
			//if(collidewith != noone) {
			//	//if we're not already overlapping w/ that player
			//	if(place_meeting(x, y, collidewith) == false) {
			//		//track that we've hit somethingh
			//		colliding = true;
			//		//bounce  the other player down
			//		collidewith.y_vel = max(0, collidewith.y_vel + 2);
			//	}
			//} else 
			if !(knockdown) {
		
				//set to a burger that may be one pixel beneath me
				collidewith = instance_place(x, y + dir, obj_platform);
				//if we're going to collide w/ a burger
				if(collidewith != noone) {
					//and if we've not already overlapped w/ that burger
					if(place_meeting(x, y, collidewith) == false) {
						
						var _random_index = irandom(array_length(jump_snd) - 1);
						var _playsound = jump_snd[_random_index];
						//audio_play_sound(_playsound, 101, 0);
						
						var _random_index2 = irandom(array_length(jump_snd2) - 1);
						var _playsound2 = jump_snd2[_random_index2];
						audio_play_sound(_playsound2, 101, 0);
						
						
						//audio_play_sound(phaseJump3, 101, 0);
						
						
						
						//create 15 dust particles
						part_particles_create(parts, x, y+15, dust, 10);
						//start the screen shake alarm
						alarm[0] = shake_time;
						//start the animation timer
						squish_timer += squish_speed;
						
						instance_create_layer(collidewith.x, collidewith.y, "Instances", obj_platform_breaking);
						instance_destroy(collidewith);
						//track that we've hit something
						colliding = true;
					}
				}
			}
		
		}
	
		// if we're NOT colliding w/ anything
		if(!colliding) {
			//move one pixel in the direction we're moving
			y += dir;
			//remove that pixel from the pixels we're tracking this frame
			to_move_y -= dir;
		} else {
			//if we did collide w/ something
			//move one pixel in the direction we've moving
			y = y + dir;
			//change our y velocity to the bouncing velocity
			y_vel = bounce_vel;
			//reset our remaining pixels to move
			//(since we're bouncing in another direction, we don't care about the leftovers)
			r_y = 0;
			//break out of this while loop
			break;
		}
	}

	if (canmove) {
		//if we hit the left key
		if(keyboard_check(left_key)) {
			//decrease our x velocity by the acceleration
			x_vel -= accel;
			image_xscale = -1;
		}
		//if we hit the right eye
		if(keyboard_check(right_key)) {
			//increase our x velocity by the acceleration
			x_vel += accel;
			image_xscale = 1;
		}
	}

	//if the animation timer has started
	if(squish_timer != 0) {
		//increase the counter
		squish_timer += squish_speed;
		//find the value at the counter's position on the curve
		//and set our image scale to that
	
	
		//image_yscale = animcurve_channel_evaluate(y_curve, squish_timer);
		//image_xscale = animcurve_channel_evaluate(x_curve, squish_timer);
	
	
		//if we reached the end of the animatino
		if(squish_timer >= 1) {
			//reset our scales
			image_yscale = 1;
			image_xscale = 1;
			//reset the timer
			squish_timer = 0;
		}
	}
	
	if(y > room_height) {
		//alarm[2] = bg_color;
		//audio_play_sound(twoTone2, 102, 0);
		canmove = false;
	}
	
}

if !(flyingUp) && !(dead) && !(knockdown) && !(won) {
	bouncing = true;
}
else {
	bouncing = false;
}

if (flyingUp) {
	if (y <= ybounce) {
		if (obj_gui.timer_start == false) {
			obj_star_manager.falling = true;
			
		}
	}
}

if (flyingUp) {
	// if both of them are not bouncing
	if !(obj_player_1.bouncing) && !(obj_player_2.bouncing) {
		if (y > ybounce) y_vel = -30;
		else {
			flyingUp = false;
			if (obj_gui.timer_start == false) {
				//obj_star_manager.falling = true;
				obj_gui.timer_start = true;
			}
			y_vel = -6;
		}
	} 
	// if one is bouncing
	else {
		
		if (y > camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])-90) {
			y_vel = -40;
			//show_debug_message("flying up to just about the edge of cam");
		} else {
			flyingUp = false;
			y_vel = -6;
		}
	}
}



if !(obj_player_1.won) && !(obj_player_2.won) {

	//handle smooth camera movement
	targetx = x - (camera_get_view_width(view_camera[0]) / 2); //where we want the camera to be  - centered on the player
	targety = y - (camera_get_view_height(view_camera[0]) / 2);
	
	if !(obj_player_1.offscreen) && !(obj_player_2.offscreen) {
		targety = 
			((obj_player_1.y - (camera_get_view_height(view_camera[0]) / 2))
			+(obj_player_2.y - (camera_get_view_height(view_camera[0]) / 2)))
			/2;
			//show_debug_message("NONE OFFSCREEN");
	} else if (obj_player_1.offscreen) && !(obj_player_2.offscreen){
		targety = obj_player_2.y - (camera_get_view_height(view_camera[0]) / 2);
	
	} else if (obj_player_2.offscreen) && !(obj_player_1.offscreen){
		targety = obj_player_1.y - (camera_get_view_height(view_camera[0]) / 2);
	
	} else targetx = 0;
	
	currentx = camera_get_view_x(view_camera[0]); //current camera position
	currenty = camera_get_view_y(view_camera[0]);
	//blend between the current and target camera positions for smooth movement
	var camx = targetx * 0.1 + currentx *0.9;
	var camy = clamp(targety*0.1 + currenty*0.9, 0, 2520);
} else {
	var camx = 0;
	if (obj_player_1.won) targety = obj_player_1.y - (camera_get_view_height(view_camera[0]) / 2);
	else targety = obj_player_2.y - (camera_get_view_height(view_camera[0]) / 2);
	currenty = camera_get_view_y(view_camera[0]);
	var camy = clamp((targety*0.1 + currenty*0.9)+2, 0, 3360);
	//show_debug_message("camy:"+string(camy));
	
	obj_star_manager.falling = false;
	instance_destroy(obj_collect);
}

camera_set_view_pos(view_camera[0], camx, camy);

//if (won) camera_set_view_pos(view_camera[0], 0, camy);
	
if(y >= (camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]))) {
	offscreen = true;
	//if (obj_player_1.offscreen) && !(obj_player_2.offscreen) show_debug_message("P1 OFFSCREEN");
	//if (obj_player_2.offscreen) && !(obj_player_1.offscreen) show_debug_message("P2 OFFSCREEN");
	//else show_debug_message("BOTH!!!");
		
		
} else {
	offscreen = false;
	//show_debug_message("NO ONE");
}
//show_debug_message(targety);

if (bouncing) && (offscreen) && !(obj_player_1.won) && !(obj_player_2.won){
	if (y > camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])-90) {
			y_vel = -6;
	}
}






//if (keyboard_check_pressed(vk_space)) obj_player_2.y = 900;
//if (keyboard_check_pressed(vk_space)) obj_gui.timer = 1;
if (winner = -4) winner = "Player 2";
if (obj_player_1.won) winner = "Player 1";