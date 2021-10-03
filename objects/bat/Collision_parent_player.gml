/// @desc



if other.invis_frames == 0 {
	
	audio_play_sound(so_player_hit_1, 5, false)
	
	other.invis_frames = other.invis_frames_max	
	
	var _dir = point_direction(x, y, other.x, other.y)
	other.hsp += lengthdir_x(6, _dir)
	other.vsp += lengthdir_y(4, _dir)
	
	hsp += lengthdir_x(4, _dir + 180)
	vsp += lengthdir_y(4, _dir + 180)
	
}


