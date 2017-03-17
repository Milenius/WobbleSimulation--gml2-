///Tanh Script 

temp_matrix = 0;

for (var i = 0; i < array_height_2d(argument0); i++)
{
	for (var j = 0; j < array_length_2d(argument0,0); j++)
	{
		temp_matrix[i,j] = 1 - ( (2) / (exp(2*argument0[i,j])+1) );
	}
}

return temp_matrix;