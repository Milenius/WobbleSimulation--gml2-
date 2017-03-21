///NeuroNet Code

input_vals = argument0;
syn0 = argument1;
syn1 = argument2;
syn2 = argument3;

//Input wird mit Synapsen multipliziert

l0 = input_vals;
l1 = scr_tanh_matrix(scr_matrix_dot(l0,syn0));
l2 = scr_tanh_matrix(scr_matrix_dot(l1,syn1));
l3 = scr_tanh_matrix(scr_matrix_dot(l2,syn2));

if (instance_number(obj_wobble) <= 50) || (new_gen == true)
{   
	new_gen = true;
	other.hp += 300;
	
    for (var i = 0; i < 4;i++)
    {
		
        with instance_create_layer(irandom(room_width),irandom(room_height),"Instances",obj_wobble)
        {
            syn0 = other.syn0;
            syn1 = other.syn1;
			syn2 = other.syn2;
            
            if irandom(100) == 1
            {
                syn0[irandom(array_height_2d(syn0)),irandom(array_length_2d(syn0,0))] = random_range(-2,2);
            }
            if irandom(100) == 1
            {
                syn1[irandom(array_height_2d(syn1)),irandom(array_length_2d(syn1,0))] = random_range(-2,2);
            }
			
			if irandom(100) == 1
            {
                syn2[irandom(array_height_2d(syn2)),irandom(array_length_2d(syn2,0))] = random_range(-2,2);
            }
			
        }
        
    }

    if instance_number(obj_wobble) >= 200
	{
		new_gen = false;
		
		obj_spawner.stat_ticks_file = file_text_open_append(working_directory + "\stat_ticks.txt");
		file_text_write_string(obj_spawner.stat_ticks_file, string(obj_spawner.cur_ticks));
		file_text_writeln(obj_spawner.stat_ticks_file);
		
		obj_spawner.stat_featen_file = file_text_open_append(working_directory + "\stat_featen.txt");
		file_text_write_string(obj_spawner.stat_featen_file, string(obj_spawner.foods_eaten));
		file_text_writeln(obj_spawner.stat_featen_file);
		
		obj_spawner.stat_peaten_file = file_text_open_append(working_directory + "\stat_peaten.txt");
		file_text_write_string(obj_spawner.stat_peaten_file, string(obj_spawner.poison_eaten));
		file_text_writeln(obj_spawner.stat_peaten_file);
		
		obj_spawner.cur_ticks = 0;
		obj_spawner.foods_eaten = 0;
		obj_spawner.poison_eaten = 0;
		obj_spawner.generation++;
		
		file_text_close(obj_spawner.stat_ticks_file);
		file_text_close(obj_spawner.stat_featen_file);
		file_text_close(obj_spawner.stat_peaten_file);
		
	}   
}

return l2;





