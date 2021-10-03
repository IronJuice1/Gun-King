/// @desc

if instance_exists(desert_eagle) {
	instance_destroy(desert_eagle)
}
	
parent_player.is_dead = true

audio_play_sound(so_die_end, 5, false)

instance_destroy()
