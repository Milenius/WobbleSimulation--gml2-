///Event Step Script

//Nächsteobjekterkennung.tm
nearest_food = instance_nearest(x,y,obj_food);
nearest_poison = instance_nearest(x,y,obj_poison);
nearest_wobble = instance_nearest(nearest_food.x,nearest_food.y,obj_wobble);

if (point_direction(x,y,nearest_food.x,nearest_food.y) < direction) 
{
    neuronet_input[0] = 1;
}
else 
{
    neuronet_input[0] = -1;
}

neuronet_input[1] = distance_to_object(nearest_food)/max_dis_input * 2 - 1

if neuronet_input[1] < -1
{neuronet_input[1] = -1;}

if neuronet_input[1] > 1
{neuronet_input[1] = 1;}

if (point_direction(x,y,nearest_poison.x,nearest_poison.y) < direction) 
{
    neuronet_input[2] = 1;
}
else 
{
    neuronet_input[2] = -1;
}

neuronet_input[3] = distance_to_object(nearest_food)/max_dis_input * 2 - 1

if neuronet_input[3] < -1
{neuronet_input[3] = -1;}

if neuronet_input[3] > 1
{neuronet_input[3] = 1;}

if (point_direction(x,y,nearest_wobble.x,nearest_wobble.y) < direction) 
{
    neuronet_input[4] = 1;
}
else 
{
    neuronet_input[4] = -1;
}

neuronet_input[5] = distance_to_object(nearest_food)/max_dis_input * 2 - 1

if neuronet_input[5] < -1
{neuronet_input[5] = -1;}

if neuronet_input[5] > 1
{neuronet_input[5] = 1;}

//Sonstige Sinne
neuronet_input[6] = ((hp/max_lifespan) * 2 ) - 1

//BIAS

neuronet_input[7] = 1;

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
speed = neuronet_output[1] + 3;
image_angle = direction-90

//Kollisionsabfrage Systeme
//Nahrung
cur_food = instance_place(x,y,obj_food);
if (cur_food != noone)
{
    hp += cur_food.kalorien;
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
    hp += cur_poison.kalorien;    
    with cur_poison
    {
        instance_destroy();
    }
    cur_poison = noone;
}

//Überlebens und Sterbe Systeme
if (hp >= max_lifespan)
{
    hp = max_lifespan;
}

if (hp <= 0)
{
    instance_destroy();
}

hp -= speed/2;

//Genocide Button
/*
if keyboard_check_pressed(ord("x"))
{
	instance_destroy();
}
*/
first_run = 1;