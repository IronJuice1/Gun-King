/// @desc

x += lengthdir_x(move_spd, move_dir)
y += lengthdir_y(move_spd, move_dir)

if collision_point(x, y, parent_collision, false, false) != noone {
	
	instance_destroy()
	
}

image_angle = move_dir
