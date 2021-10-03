/// @desc Move a room up

if DEV {
	
	//Move to room above
	audio_play_sound(so_next_room_1, 5, false)	
	
	global.room_number += 1
	var _room_to_goto = asset_get_index("r_" + string(global.room_number) + "_" + global.room_character)
	room_goto(_room_to_goto)

}

