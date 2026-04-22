/// @description Insert description here
// You can write your code in this editor
//x = 960/2;
//x = 960/2 + dsin(current_time * 0.001) * 5;
//y = 0;

//draw_sprite(spr_octopus, 3, x, y);


//var x_offset;
//if wobbling {
//    wobble += wobble_speed;
//}
//x_offset = sin(wobble) * wobble_intensity;
//draw_sprite(spr_octopus, 0, x + x_offset, y);



var _sprite = spr_octopus;
var _x = display_get_gui_width()/2;

if (obj_player.bouncing) {
	wobble += 0.5;
	var _shake = sin(wobble) * 3;
} else {
	var _shake = 0;
}

if (_y<0) && (!(obj_player_1.won) && !(obj_player_2.won)){
	_y += 0.5;
	//if !(instance_exists(obj_fade)) instance_create_layer(0,0,"Instances",obj_fade);
	draw_set_halign(fa_center)
	draw_set_font(fnt_text3)
	draw_set_color(#FFECD6);
	draw_text_ext(_x,display_get_gui_height()/2-120,"The mighty Lunar Octopus of this castle guards the tower; there are rumors that it hides a special Spell Book at the very top, and the only way to get it is to soothe him to sleep with a lullaby.",-1,1000)
	draw_text_ext(_x,display_get_gui_height()/2,"You and another witch each want it for yourself. Climb up the magic musical spiral staircase, dodge the cursed notes, and prevent her from taking it!",-1,1000)
} else if (obj_player_1.won) || (obj_player_2.won) {
	if _y >= -300 {
		_y -= 1;
	}
}

draw_sprite_ext(_sprite, 0, _x + _shake, _y, 1.6, 1.6, 0, c_white, 1);

obj_star_manager.x = _x + _shake;
obj_star_manager.y = _y;
//instance_activate_object(obj_star_manager, 0, _x + _shake, _y, 1, 1, 0, c_white, 1);


	