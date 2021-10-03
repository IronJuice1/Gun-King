/// @desc

if P exit

cooldown_timer = max(cooldown_timer - 1, 0)
if cooldown_timer == 0 and _ctrl_input.shoot_pressed and parent_player.electrified_timer == 0 and parent_player.can_control {
	
	cooldown_timer = cooldown_timer_max
	event_user(1)
	
}

shake_duration = max(shake_duration - 1, 0)

#region // "animation"

var _p = parent_player

x = _p.x + (5 * _p.image_xscale)
y = _p.y

var _dir = point_direction(x, y, M_X, M_Y)
image_angle = _dir

// Between 90 and 270 we flip y-scale
if _dir > 90 and _dir < 270 {
	image_yscale = -1
} else {
	image_yscale = 1
}

#endregion
