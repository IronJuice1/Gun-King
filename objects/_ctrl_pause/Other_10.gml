/// @desc Start Pause


global.paused = true
pause_obj_show = true
	
var _width = 90
var _height = 22

//Contunue
var _id = instance_create_depth(GUI_WIDTH/2, GUI_HEIGHT*0.3, depth - 1, button_dynamic)
with (_id) {
		
	width = 90
	height = 22
	text = "Resume"
	clicked_script = toggle_pause
	draw_in_gui = true

}
ds_list_add(ds_list_pause_buttons, _id)

//Restart
var _id = instance_create_depth(GUI_WIDTH/2, GUI_HEIGHT*0.45, depth - 1, button_dynamic)
with (_id) {
		
	width = 120
	height = 22
	text = "Restart Game"
	clicked_script = game_restart
	draw_in_gui = true

}
ds_list_add(ds_list_pause_buttons, _id)

if not IN_HTML {

	//Fullscreen Size
	var _id = instance_create_depth(GUI_WIDTH/2, GUI_HEIGHT*0.6, depth - 1, button_dynamic)
	with (_id) {
	
		width = 32
		height = 32
		text = ""
		icon_sprite = s_icon_fullscreen
		clicked_script = my_toggle_fullscreen
		draw_in_gui = true
	
	}
	ds_list_add(ds_list_pause_buttons, _id)


	//Window Size
	var _id = instance_create_depth(GUI_WIDTH/2, GUI_HEIGHT*0.75, depth - 1, button_dynamic)
	with (_id) {
	
		width = 32
		height = 32
		text = " "
		icon_sprite = s_icon_size
		clicked_script = my_toggle_screen_size
		draw_in_gui = true
	
	}
	ds_list_add(ds_list_pause_buttons, _id)

}
