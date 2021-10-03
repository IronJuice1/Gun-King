/// @desc

var _input = _ctrl_input


if DEV {
	if mouse_check_button_pressed(mb_middle) {
		x = mouse_x
		y = mouse_y
		
	}
}

invis_frames = max(invis_frames - 1, 0)


// Set "player_movement_state"
if place_meeting(x, y + 1, parent_collision) {
	if player_movement_state != PLAYER_MOVEMENT_STATE.ON_GROUND {
		audio_play_sound(so_land_1, 5, false)	
	}
	player_movement_state = PLAYER_MOVEMENT_STATE.ON_GROUND
} else
	player_movement_state = PLAYER_MOVEMENT_STATE.AIR

#region Horizontal

	var above_max_speed = ((hsp > PLAYER_BASE_MAX_HSP) or (hsp < -PLAYER_BASE_MAX_HSP))
	
	var dir = _input.right_hold - _input.left_hold
	if not above_max_speed {
		hsp += dir * PLAYER_BASE_ACC
	} else {
		hsp += dir * PLAYER_BASE_ACC*0.05
	}
	
	
	var _ice_below = (player_movement_state == PLAYER_MOVEMENT_STATE.ON_GROUND) and (collision_point(x, y + 13, ice, false, true) != noone)
	
	//if (dir == 0)				//When we are not pressing anything
	//{
	if _ice_below {
		
		
	} else if above_max_speed {
		if (player_movement_state == PLAYER_MOVEMENT_STATE.ON_GROUND) { var _fric = PLAYER_BASE_FRIC*0.2 }
		if (player_movement_state == PLAYER_MOVEMENT_STATE.AIR) { var _fric = PLAYER_BASE_FRIC_AIR*0.2 }
		hsp = approach(hsp, 0, _fric)
	} else {
		if (player_movement_state == PLAYER_MOVEMENT_STATE.ON_GROUND) { var _fric = PLAYER_BASE_FRIC }
		if (player_movement_state == PLAYER_MOVEMENT_STATE.AIR) { var _fric = PLAYER_BASE_FRIC_AIR }
		hsp = approach(hsp, 0, _fric)
	}
	//}

	if (hsp > PLAYER_BASE_MAX_HSP) and not _ice_below
		hsp = approach(hsp, PLAYER_BASE_MAX_HSP, PLAYER_BASE_ACC*0.2)

	if (hsp < -PLAYER_BASE_MAX_HSP) and not _ice_below
		hsp = approach(hsp, -PLAYER_BASE_MAX_HSP, PLAYER_BASE_ACC*0.2)

#endregion

#region Jump

jump_pressed_remember = max(jump_pressed_remember - 1, 0)
jump_timer = max(jump_timer - 1, 0)

if (_input.action_1_clicked)
{
	jump_pressed_remember = jump_pressed_remember_value	
}

if (jump_pressed_remember > 0) and (player_movement_state == PLAYER_MOVEMENT_STATE.ON_GROUND) {
	
	player_movement_state = PLAYER_MOVEMENT_STATE.AIR
	jump_pressed_remember = 0
	vsp = -jump_power
	jump_timer = jump_timer_duration
	
	audio_play_sound(so_jump_1, 5, false)	
	
}

//Add height to jump
if (_input.action_1_hold) and (jump_timer > 0) {
	vsp -= jump_adding	
}

#endregion

#region Vertical + Limit Vsp

if (player_movement_state == PLAYER_MOVEMENT_STATE.AIR) { vsp += GRAVITY }

if (vsp > PLAYER_BASE_MAX_VSP)
	vsp = approach(vsp,PLAYER_BASE_MAX_VSP,GRAVITY*1.2)

if (vsp < -PLAYER_BASE_MAX_VSP)
	vsp = approach(vsp,-PLAYER_BASE_MAX_VSP,GRAVITY*4)
	
#endregion


#region Collision (Vertical and Horizontal)

//Horizontal Collision
if (place_meeting(x + hsp, y, parent_collision))
{
	while (!place_meeting(x + sign(hsp), y, parent_collision))
		{
			x += sign(hsp)	
		}
	hsp = 0
}
x += hsp

//Vertical Collision
if (place_meeting(x, y + vsp, parent_collision))
{
	while (!place_meeting(x, y + sign(vsp), parent_collision))
		{
			y += sign(vsp)	
		}
	vsp = 0
}
y += vsp

#endregion

// Animation
event_user(6)

if (y) > room_height {
	
	y -= room_height
	show_debug_message("went to prev room: " + string(y))
	audio_play_sound(so_prev_room_1, 5, false)	
	room_goto_previous()
		
}

if (y + 18) < 0 {
	
	y += room_height
	show_debug_message("went to next room: " + string(y))
	audio_play_sound(so_next_room_1, 5, false)	
	room_goto_next()
	
}






