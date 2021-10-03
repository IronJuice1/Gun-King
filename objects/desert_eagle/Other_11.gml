/// @desc Fire a bullet

add_screen_shake(12)
shake_duration = shake_duration_max

audio_play_sound(so_shoot_combined, 5, false)



var _dir = point_direction(x, y, mouse_x, mouse_y)

if _dir > 90 and _dir < 270 {
	var _dir_add = -35
} else {
	var _dir_add = 35
}

//Knockback the player
with (parent_player) {
	
	hsp += lengthdir_x(other.knockback_value*other.knockback_fact_x, _dir + 180)
	vsp += lengthdir_y(other.knockback_value*other.knockback_fact_y, _dir + 180)
	
}

var _x = x + lengthdir_x(dist_from_gun, _dir + _dir_add)
var _y = y + lengthdir_y(dist_from_gun, _dir + _dir_add)

with (instance_create_layer(_x, _y, "Projectiles", proj_1)) {
	
	move_dir = _dir
	
}


