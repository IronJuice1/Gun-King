/// @desc End Pause

global.paused = false
pause_obj_show = false
		
for (var _i = 0; _i < ds_list_size(ds_list_pause_buttons); _i++) {
		
	var _id = ds_list_find_value(ds_list_pause_buttons, _i)
	instance_destroy(_id)
}
ds_list_clear(ds_list_pause_buttons)




