/// @desc 

/*

with (instance_create_depth(GUI_WIDTH*0.1, GUI_HEIGHT*0.8, depth, button_dynamic)) {
	
	width = 32
	height = 32
	text = ""
	icon_sprite = s_icon_fullscreen
	clicked_script = my_toggle_fullscreen
	draw_in_gui = true
	
}

with (instance_create_depth(GUI_WIDTH*0.9, GUI_HEIGHT*0.8, depth, button_dynamic)) {
	
	width = 32
	height = 32
	text = " "
	icon_sprite = s_icon_size
	clicked_script = my_toggle_screen_size
	draw_in_gui = true
	
}
*/

#region create clouds

var _cloud_layer = layer_create(CLOUD_LAYER_DEPTH, "Clouds")

repeat (CLOUD_START_AMOUNT) {
	
	var _spd = choose(CLOUD_SPEED, -CLOUD_SPEED)
	create_cloud(_cloud_layer, irandom_range(0, room_width), irandom_range(0, room_height), _spd)
	
}

#endregion



