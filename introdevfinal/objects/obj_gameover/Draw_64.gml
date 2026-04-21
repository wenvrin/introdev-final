/// @description Insert description here
// You can write your code in this editor
draw_set_color(#D08159);
draw_set_halign(fa_center);
draw_set_font(fnt_title)
draw_text_ext(display_get_gui_width()/2,display_get_gui_height()/3,"Game Over",-1,1000)

draw_set_color(#ffecd6);
draw_set_font(fnt_text3);
draw_text_ext(display_get_gui_width()/2,display_get_gui_height()/2,"Both of you ran out of time, and neither one could evade the Octopus... Maybe next time?",-1,1000)

draw_set_color(#D08159);
draw_set_font(fnt_text2);
draw_text_ext(display_get_gui_width()/2,display_get_gui_height()/1.2,"[SPACE] to restart",-1,1000);
