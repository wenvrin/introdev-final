/// @description Insert description here
// You can write your code in this editor
if !(obj_player_1.won) && !(obj_player_2.won) {
	if timer_start = true {
		var offset = 6;
		draw_set_font(fnt_text);

		draw_set_halign(fa_center);

		draw_set_color(#FFECD6);
		draw_text(display_get_gui_width()/2, display_get_gui_height()/10+50, round(timer/60));
	}
	
} else {
	draw_set_font(fnt_title);
	draw_set_color(#FFECD6);
	draw_set_halign(fa_center);
	draw_text(display_get_gui_width()/2,display_get_gui_height()/10,string(obj_player.winner)+" got the Spell Book!");
	draw_set_font(fnt_text2);
	//draw_text(display_get_gui_width()/2,display_get_gui_height()-130,"But it was only X...");
	draw_text(display_get_gui_width()/2,display_get_gui_height()-90,"Press [SPACE] to go to title screen!");
	
}

plusfive = function() {
	draw_set_halign(fa_center);
	draw_set_font(fnt_text2);
	draw_set_color(green);
	draw_text(display_get_gui_width()/2+400,display_get_gui_height()/10,"+"+string(round(obj_gui.bonus/60))+" sec.");
}

minusfive = function() {
	draw_set_halign(fa_center);
	draw_set_font(fnt_text2);
	draw_set_color(red);
	draw_text(display_get_gui_width()/2-400,display_get_gui_height()/10,string(round(obj_gui.penalty/60))+" sec.");
}


///////////////// plusfive / minusfive /////////////

//if (obj_player.plusfive) || (obj_player.minusfive) {
//	num_bonuses = instance_number(obj_collect)+instance_number(obj_collect_bad);
//	alarmtime += 1;
//	if (num_bonuses == 1) {
//		if (place_meeting(obj_player.x, obj_player.y, obj_collect) == true) {
//			show_debug_message("place_meeting");
//			draw_text(display_get_gui_width()/2,150,"+5 sec.");
			
//		} else if (place_meeting(obj_player.x, obj_player.y, obj_collect_bad) == true) {
//			show_debug_message("place_meeting");
//			draw_text(display_get_gui_width()/2,150,"-5 sec.");
			
//		}
//	} else {
//		if (place_meeting(obj_player.x, obj_player.y, obj_collect) == true) {
//			show_debug_message("place_meeting");
//			draw_text(display_get_gui_width()/2,num_bonuses*100,"+5 sec.");
			
//		} else if (place_meeting(obj_player.x, obj_player.y, obj_collect_bad) == true) {
//			show_debug_message("place_meeting");
//			draw_text(display_get_gui_width()/2,num_bonuses*100,"-5 sec.");
			
//		}
//	} 
//	if alarmtime == 1 {
//		alarm[0] = 360;
//		//show_debug_message("alarmtime!!!!!");
//	}
//	show_debug_message(alarmtime);
//	//show_debug_message(num_bonuses);
	
//	//obj_player.plusfive = false;
	
//}

///////////// end plusfive minusfive ////////////////////






//show_debug_message("plusfive:"+string(obj_player.plusfive));
//show_debug_message("minusfive:"+string(obj_player.minusfive));
	

//doesnt work yet, collision with collects and timer changes

//if (place_meeting(obj_player.x,obj_player.y,obj_collect) == true) {
//	timer+=bonus;
//	draw_set_font(fnt_title);
//	draw_set_color(c_green);
//	draw_text(display_get_gui_width()/2,120,"+5 sec.");
//} else if (place_meeting(obj_player.x,obj_player.y,obj_collect_bad) == true) {
//	timer-=bonus;
//	draw_set_font(fnt_title);
//	draw_set_color(c_red);
//	draw_text(display_get_gui_width()/2,120,"-5 sec.");
//}