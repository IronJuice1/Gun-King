/// @desc 

//Screen shake
screen_shake_timer = max(screen_shake_timer - 1, 0)
if screen_shake_timer > 0 {
	var _amount = (3 + screen_shake_timer)*0.35
	random_change_x = random_range(-_amount, _amount) 
	random_change_y = random_range(-_amount, _amount)
} else {
	random_change_x = 0
	random_change_y = 0	
}

camera_set_view_size(view_camera[0], MY_GAME_WIDTH, MY_GAME_HEIGHT)

//Decide camera position
if not is_undefined(follow_target) {
	
	var _follow_x_inside_room = follow_target.x
	var _follow_y_inside_room = follow_target.y
	
	//_follow_x_inside_room = clamp(_follow_x_inside_room, 0, room_width)
	//_follow_y_inside_room = clamp(_follow_y_inside_room, 0, room_height)
	
	x_to = _follow_x_inside_room
	y_to = _follow_y_inside_room
	
	var cam_response = 12	//high value = slower camera response
	x += (x_to - x)/cam_response	
	y += (y_to - y)/cam_response
	
	if clamp_inside_room {
		x = clamp(x, 0 + MY_GAME_WIDTH/2, room_width - MY_GAME_WIDTH/2)
		y = clamp(y, 0 + MY_GAME_HEIGHT/2, room_height - MY_GAME_HEIGHT/2)
	}
	
}

//These will go slightly outside of the room with screen shake (but its ok)
var _final_x = room_width/2 + random_change_x
var _final_y = room_height/2 + random_change_y
camera_set_view_pos(view_camera[0], _final_x - MY_GAME_WIDTH/2, _final_y - MY_GAME_HEIGHT/2)
