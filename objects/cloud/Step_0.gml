/// @desc

//Destroy when outside room
if (x + 64) < 0 {
	instance_destroy()	
		
}


if (x - 64) > room_width {
	
	instance_destroy()	
}

x += move_spd

