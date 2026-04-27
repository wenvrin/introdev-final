/// @description Insert description here
// You can write your code in this editor

image_index = 0;
image_speed = 0;

ystart = 3026; // starts below screen
ybounce = 2639; // where it goes up to on first launch

left_key = ord("A");
right_key = ord("D");

offscreen = true;
dead = true;
flyingUp = false;
bouncing = false;
knockdown = false;
canmove = false;
won = false;

orange = #ffaa5e;
pink = $ffaa5eF3;
red = #BF1c1c;
note_color = pink;

//create the particle system
//think of the particle system as a container for the particles
parts = part_system_create();
//set the depth (layer) of the particles
part_system_depth(parts, 30);

//particle types are "played" by the particle system that calls them
//for more info on the following functions: https://manual.gamemaker.io/beta/en/GameMaker_Language/GML_Reference/Drawing/Particles/Particle_Types/Particle_Types.htm
dust = part_type_create();
part_type_shape(dust, pt_shape_square);
part_type_size(dust, 0.2, 0.4, 0, 0);
part_type_speed(dust, 0.7, 1, 0, 0);
part_type_direction(dust, 0, 180, 0, 0);
part_type_alpha2(dust, 1, 0);
part_type_colour1(dust, #546075);
part_type_life(dust, 15, 25);

star = part_type_create();
part_type_shape(star, pt_shape_pixel);
part_type_size(star, 3, 6, 0, 0);
part_type_speed(star, 5, 10, 0, 0.4);
part_type_direction(star, 0, 360, 0, 0);
part_type_colour1(star, note_color);
part_type_life(star, 45, 55);

fly = part_type_create();
part_type_shape(fly, pt_shape_pixel);
part_type_size(fly, 3, 6, 0, 0);
part_type_speed(fly, 2, 4, 0, 0.4);
part_type_direction(fly, 0, 360, 0, 0);
part_type_colour1(fly, orange);
part_type_life(fly, 15, 25);

shake_time = 8;
//how much/long we're going to shake the screen
shake_screen = 10;
shake_screen_big = 20;
//how long we'll flash black/white
//bg_color = 500;

//references to the background layer and it's background image/colr
layer_id = layer_get_id("Background");
back_id = layer_background_get_id(layer_id);

//counter for how long we're going to animation squash/stretch
squish_timer = 0;
//the rate at which we're going to animation
squish_speed = 0.1;

//references to the two curves in anm_stretch
y_curve = animcurve_get_channel(anm_stretch, "y_scale");
x_curve = animcurve_get_channel(anm_stretch, "x_scale");

alarm[1] = 250;

winner = noone;

prev_x = x;

jump_snd = [impactWood_light_002, impactWood_light_003, impactWood_light_004];