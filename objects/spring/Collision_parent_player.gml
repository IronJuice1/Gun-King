/// @desc

if sprite_index == s_spring {
	
	sprite_index = s_spring_anim
	
	audio_play_sound(so_bounce_1, 5, false)
	
	if image_angle == 90 {
		other.vsp = 0
		var _pow = 10
	} else {
		var _pow = 5
	}
	
	other.hsp += lengthdir_x(_pow, image_angle)
	other.vsp += lengthdir_y(_pow, image_angle)
	
}


