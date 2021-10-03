/// @desc

timer = max(timer - 1, 0)
if timer == 0 {
	
	timer = timer_max
	
	var _id = instance_create_layer(x, y, "Projectiles", electric_proj)
	with (_id) {
		
		image_angle = other.image_angle
		
	}
	
}
