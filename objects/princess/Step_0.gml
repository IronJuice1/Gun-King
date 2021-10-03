/// @desc

if P exit

switch (prin_state) {
    case PRIN_STATE.START:
        image_xscale = 1
		turn_timer = turn_timer_max
		shoot_timer = shoot_timer_max
		
		if collision_circle(x, y, 64 + 36, parent_player, false, true) {
			parent_player.can_control = false
			parent_player.hsp = 0
			parent_player.vsp = 0
			prin_state = PRIN_STATE.TURN
			audio_play_sound(so_land_1, 5, false)
		}
		
    break;
    case PRIN_STATE.TURN:
		image_xscale = 1
		turn_timer = max(turn_timer - 1, 0)
		if turn_timer == 0 {
			prin_state = PRIN_STATE.SHOOT
			audio_play_sound(so_prev_room_1, 5, false)
		}
    break;
	case PRIN_STATE.SHOOT:
		image_xscale = -1
		shoot_timer = max(shoot_timer - 1, 0)
		if shoot_timer == 0 {
			
			//Create a bullet
			var _id = instance_create_layer(x - 12, y - 5, "Projectiles", proj_2)
			with (_id) {
				image_angle = point_direction(x - 12, y - 5, parent_player.x, parent_player.y - 8)
			}
			
			audio_play_sound(so_shoot_combined, 50, false)
			
			prin_state = PRIN_STATE.NOTHING
		}
    break;
	case PRIN_STATE.NOTHING:
		turn_timer = turn_timer_max
		shoot_timer = shoot_timer_max
    break;
}


