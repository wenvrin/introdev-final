/// @description Insert description here
// You can write your code in this editor

draw_self();
image_alpha -= 0.001;
if (image_alpha == 0) image_alpha = 0;
if (obj_player.flyingUp) instance_destroy(self);
