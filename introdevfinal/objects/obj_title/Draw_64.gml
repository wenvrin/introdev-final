/// @description Insert description here
// You can write your code in this editor
draw_set_color(#8d697a);
draw_set_halign(fa_left);
draw_set_font(fnt_title)
draw_text_ext(x-600,y-350,"Octopus Tower",-1,1000)

//draw_set_font(fnt_text3)
//draw_text_ext(x-600,y-120,"The mighty Lunar Octopus of this castle guards the tower; there are rumors that it hides a special treasure at the very top, and the only way to get it is to soothe him to sleep with a lullaby.",-1,700)
//draw_text_ext(x-600,y,"You and another witch each want it for yourself to use in a special potion. Climb up the magic musical spiral staircase, dodge the cursed notes, and prevent her from taking it!",-1,700)
draw_set_color(#D08159);
draw_set_font(fnt_text2)
draw_text_ext(x-600,y-230,"Press [SPACE] to start", -1,1000);

draw_set_halign(fa_right);
draw_text_ext(x+600,y+150,"WASD for P1 / Arrow Keys for P2",-1,1000)
draw_text_ext(x+600,y+200,"Jump and catch notes to soothe the octopus / RED notes will disturb your melody!",-1,1000)
draw_text_ext(x+600,y+300,"Avoid collision with the other player",-1,1000)


