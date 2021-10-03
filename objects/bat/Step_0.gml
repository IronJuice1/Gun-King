/// @desc

if (collision_circle(x, y + 12, 64, parent_player, false, true) != noone) {
	
	is_flying = true
	
	
	
}

if is_flying == true {
	
	sprite_index = s_bat_flying
	var _dir = point_direction(x, y, parent_player.x, parent_player.y)
	hsp += lengthdir_x(0.1, _dir)	
	vsp += lengthdir_y(0.1, _dir)	
	
	hsp = hsp*0.96
	vsp = vsp*0.96
	
} else {
	
		
}


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


