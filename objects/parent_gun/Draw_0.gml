/// @desc


var _shake_fact = shake_factor_each_duration_tick*shake_duration
if _shake_fact == 0 {
	draw_self()	
} else {
	
	var _x_draw = x + random_range(_shake_fact, -_shake_fact)
	var _y_draw = y + random_range(_shake_fact, -_shake_fact)
	draw_sprite_ext(sprite_index, 0, _x_draw, _y_draw, image_xscale, image_yscale, image_angle, c_white, 1)

}
