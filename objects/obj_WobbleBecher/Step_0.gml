if keyboard_check(vk_down)
{
	global.game_speed--;
    game_set_speed(global.game_speed, gamespeed_fps);
}
if keyboard_check(vk_up)
{
	global.game_speed++;
    game_set_speed(global.game_speed, gamespeed_fps);
}

if keyboard_check_pressed(ord("F"))
{
    if window_get_fullscreen()
    {
       window_set_fullscreen(false);
    }
    else
    {
       window_set_fullscreen(true);
    }
}

if keyboard_check_pressed(ord("D"))
{
    global.draw_it = !global.draw_it;
}

if keyboard_check_pressed(vk_space)
{
    global.show_debug = !global.show_debug;
    
    show_debug_overlay(global.show_debug);
}

