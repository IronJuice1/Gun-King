/// @desc


x += lengthdir_x(move_spd, image_angle)
y += lengthdir_y(move_spd, image_angle)

if collision_point(x, y, parent_collision, false, false) != noone {
	
	instance_destroy()	

}
