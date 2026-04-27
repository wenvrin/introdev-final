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
