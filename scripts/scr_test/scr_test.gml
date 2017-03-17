///Matrix mit zufälligen Werten zwischen -2 & 2 wird erstellt (beide inklusiv)

matrix_height = argument0; 
matrix_width = argument1;

temp_matrix = 0;

for (var i = matrix_height - 1; i > -1; i--;)
{
    for (var ii = matrix_width -1 ; ii > -1 ; ii--;)
    {
        temp_matrix[i, ii] = irandom_range(-2,2); 
    }
}

return temp_matrix;