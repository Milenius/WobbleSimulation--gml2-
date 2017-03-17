///Event Step Script

//Nächsteobjekterkennung.tm
nearest_food = instance_nearest(x,y,obj_food);
nearest_poison = instance_nearest(x,y,obj_poison);

if (point_direction(x,y,nearest_food.x,nearest_food.y) < direction) 
{
    neuronet_input[0] = 1;
}
else 
{
    neuronet_input[0] = -1;
}

if (point_direction(x,y,nearest_poison.x,nearest_poison.y) < direction) 
{
    neuronet_input[1] = 1;
}
else 
{
    neuronet_input[1] = -1;
}

//BIAS

neuronet_input[2] = 1;

//Output
neuronet_output = scr_neuronet(neuronet_input,syn0,syn1,syn2);

if neuronet_output[0] > 0
{
    direction += 5;
}
if neuronet_output[0] < 0
{
    direction -= 5;
}

//Bewegung im Geschwindigkeits & Richtungsmodell
speed = 2;
image_angle = direction-90

//Kollisionsabfrage Systeme
//Nahrung
cur_food = instance_place(x,y,obj_food);
if (cur_food != noone)
{
    alarm[0] += cur_food.kalorien;
    with cur_food
    {
        instance_destroy();
    }
    cur_food = noone;
}
//Gift

cur_poison = instance_place(x,y,obj_poison);
if (cur_poison != noone)
{
    alarm[0] += cur_poison.kalorien;    
    with cur_poison
    {
        instance_destroy();
    }
    cur_poison = noone;
}

//Überlebens und Sterbe Systeme
if (alarm[0] >= max_lifespan)
{
    alarm[0] = max_lifespan;
}

if (alarm[0] <= 0)
{
    alarm[0] = 1;
}

//Genocide Button
/*
if keyboard_check_pressed(ord("x"))
{
	instance_destroy();
}
*/
first_run = 1;