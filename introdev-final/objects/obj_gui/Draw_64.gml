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
	draw_text(display_get_gui_width()/2,display_get_gui_height()-90,"Press [SPACE] to go to title screen!");
	
}

if (obj_octopus._y<=0) && (!(obj_player_1.won) && !(obj_player_2.won)) && (tut){
	draw_set_halign(fa_center)
	draw_set_font(fnt_text3)
	draw_set_color(#FFECD6);
	draw_text_ext(display_get_gui_width/2.7,display_get_gui_height()/2-140,"The mighty Lunar Octopus of this castle guards the tower; there are rumors that it hides a special Spell Book at the very top, and the only way to get it is to soothe him to sleep with a lullaby.",-1,1000)
	draw_text_ext(display_get_gui_width/2.7,display_get_gui_height()/2-20,"You and another witch each want it for yourself. Climb up the magic musical spiral staircase and prevent her from taking it!",-1,1000)
	draw_set_font(fnt_text4);
	draw_set_color(#D08159);
	draw_text_ext(display_get_gui_width/2.7,display_get_gui_height()/2+60,"WASD for P1 / Arrow Keys for P2 / PASTEL notes add extra time / RED notes take away time",-1,1000);
	show_debug_message(obj_octopus._y);
	if (obj_octopus._y >= 0) {
		show_debug_message("msg");
		draw_set_halign(fa_center)
		draw_set_font(fnt_text4)
		draw_set_color(#B2849A);
		draw_text_ext(display_get_gui_width-600,display_get_gui_height()/2+110,"[ SPACE ] to continue",-1,1000)
		if (keyboard_check_pressed(vk_space)) tut = false;
	}
} 
	

if (addingfive == true) plusfive();
if (subtractfive == true) minusfive();

//////////////////////////// FUNCTIONS ////////////////////////////
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
