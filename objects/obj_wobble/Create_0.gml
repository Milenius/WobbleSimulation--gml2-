///Event Create Script
nearest_food = noone;
nearest_poison = noone;
nearest_wobble = noone;

hidden_layer = 1;

first_run = 0;
lifespan = 300;
hp = 300;
max_lifespan = 1500;
max_spd = 4;
debug_modus = false; 

new_gen = false;

//Input Layer | Hidden Layer 1
syn0 = scr_random_matrix(5,6);
syn1 = scr_random_matrix(6,4);	
syn2 = scr_random_matrix(4,2);

frame_skip = 0;