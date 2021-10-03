
#region Initalize Game

	//Start the game fading "in"
	global.paused = true
	draw_set_font(f_12x_equipment)
	my_set_text_align(fa_center, fa_middle)


#endregion

//Ect
#macro SINGLETON_OBJ_DEPTH -5000

//Game Dev Settings
#macro SHOW_DEBUG true
#macro ENABLE_SCREENSHAKE true

//Display Size
#macro MY_GAME_HEIGHT 256//(1080/4)
#macro MY_GAME_WIDTH 256//(1080/4)
#macro GUI_WIDTH 1080/4
#macro GUI_HEIGHT 1080/4

//Shorthands
#macro DEV false
#macro dev:DEV true
#macro IN_HTML (not (os_browser == browser_not_a_browser))
#macro P (global.paused == true)
#macro MOUSE_GUI_X device_mouse_x_to_gui(0)
#macro MOUSE_GUI_Y device_mouse_y_to_gui(0)

// PLAYER STATS
#macro PLAYER_BASE_ACC 0.35
#macro PLAYER_BASE_MAX_HSP 1.2
#macro PLAYER_BASE_MAX_VSP 3.5
#macro PLAYER_BASE_FRIC_AIR 0.04
#macro PLAYER_BASE_FRIC 0.15
#macro GRAVITY 0.2

