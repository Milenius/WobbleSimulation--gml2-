///Event Create Script
nearest_food = noone;
nearest_poison = noone;

first_run = 0;
lifespan = 300;
max_lifespan = 1500;
spd = 2;
alarm[0] = lifespan;
debug_modus = false; 

new_gen = false;

//Input Layer | Hidden Layer 1
syn0 = scr_random_matrix(3,4);
syn1 = scr_random_matrix(4,4);
syn2 = scr_random_matrix(4,1);

frame_skip = 0;