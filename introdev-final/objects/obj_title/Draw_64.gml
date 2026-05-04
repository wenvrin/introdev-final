//draw_set_color(#8d697a);
//draw_set_halign(fa_left);
//draw_set_font(fnt_title)
//draw_text_ext(x-600,y-350,"Octopus Tower",-1,1000)

ttime++;
draw_set_color(#D08159);
draw_set_font(fnt_text4)
if (ttime < 45) draw_text_ext(display_get_gui_width()/3+60,y+175,"Press [SPACE] to start", -1,1000);
if (ttime >= 60) ttime = 0;
//draw_set_halign(fa_right);
//draw_text_ext(x+600,y+150,"WASD for P1 / Arrow Keys for P2",-1,1000)
//draw_text_ext(x+600,y+200,"Jump and catch notes to soothe the octopus / RED notes will disturb your melody!",-1,1000)
//draw_text_ext(x+600,y+300,"Avoid collision with the other player",-1,1000)


