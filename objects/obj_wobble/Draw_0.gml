draw_set_color(c_black);

if global.show_debug = true
{
	if nearest_food != noone
	{
		if instance_exists(nearest_food)
		{
			draw_line(x,y,nearest_food.x,nearest_food.y)
		}
	}
	if nearest_poison != noone
	{
		if	instance_exists(nearest_poison)
		{
			draw_line(x,y,nearest_poison.x,nearest_poison.y)
		}
	}
	
	draw_line(x,y,x+lengthdir_x(32,direction),y+lengthdir_y(32,direction))

}

draw_self();
