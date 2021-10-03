/// @desc

#region Create clouds

if random(1) < 0.02 {
	
	if random(1) > 0.5 {
		//Move left	
		var _x = room_width + 48
		var _spd = -CLOUD_SPEED
	} else {
		//Move right
		var _x = -48
		var _spd = CLOUD_SPEED
	}
	
	var _y = irandom_range(16, room_height - 16)
	create_cloud("Clouds", _x, _y, _spd)
	
}





#endregion
