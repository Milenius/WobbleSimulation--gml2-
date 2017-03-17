

if (instance_number(obj_wobble) == 0)
{
    for (var i = 0;i < 200;i++)
    {   
        with instance_create_layer(irandom(room_width),irandom(room_height),"Instances",obj_wobble)
        {
            first_gen = true;
            
        }
    }
    first_spawn = false;
}

if (instance_number(obj_food) < anzahl_essen)
{
	foods_eaten += 1;
    instance_create_layer(irandom(room_width),irandom(room_height),"Instances",obj_food);
}

if (instance_number(obj_poison) < anzahl_gift)
{
	poison_eaten += 1;
    instance_create_layer(irandom(room_width),irandom(room_height),"Instances",obj_poison);
}

cur_ticks++;

if cur_ticks > best_ticks
{
    best_ticks = cur_ticks;
}


