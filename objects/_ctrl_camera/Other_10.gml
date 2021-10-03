/// @desc 

//Find a "parent_player" as target_room
for (var _i = 0; _i < (instance_number(parent_player)); _i++) {
    
	var _id = instance_find(parent_player, _i)
	follow_target = _id
	
}

if instance_number(parent_player) = 0 {
	follow_target = undefined	
}

//Teleport the camera right to the target_room!
if not is_undefined(follow_target)
{
	var _x_start = follow_target.x
	var _y_start = follow_target.y
	if clamp_inside_room {
		_x_start = clamp(_x_start, 0, room_width)
		_y_start = clamp(_y_start, 0, room_height)
	}
	x = _x_start
	y = _y_start
}
else
{
	x = room_width/2
	y = room_height/2
}

