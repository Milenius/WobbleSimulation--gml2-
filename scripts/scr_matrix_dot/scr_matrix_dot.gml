///Matrixmultiplikation (Dot)
// argument0 = matrix 1   ;   argument1 = matrix 2

temp_matrix = 0;
for (var i = 0; i < array_height_2d(argument0); i++) 
{ 
    for (var j = 0; j < array_length_2d(argument1,0); j++) 
	{ 
		temp_matrix[i,j] = 0;
        for (var k = 0; k < array_length_2d(argument0,0); k++) 
		{ 
            temp_matrix[i,j] += argument0[i,k] * argument1[k,j];
        }
    }
}

return temp_matrix;


