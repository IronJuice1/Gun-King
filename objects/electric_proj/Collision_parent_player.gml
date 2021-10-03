/// @desc

other.electrified_timer = SHOCK_DURATION
other.hsp = 0

#region snap player to this projectile

	var _prev_x = other.x
	var _prev_y = other.y
	other.x = x
	other.y = y

	if collision_rectangle(other.bbox_left, other.bbox_top, other.bbox_right, other.bbox_bottom, parent_collision, false, true) != noone {
		//Then there is a col at our new pos and we revert
		other.x = _prev_x
		other.y = _prev_y
	}

#endregion


audio_play_sound(so_shock_1, 5, false)

instance_destroy()
