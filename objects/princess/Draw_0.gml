/// @desc

draw_self()

draw_sprite_ext(s_gun_pink, 0, x + 6*image_xscale, y, image_xscale, 1, 0 - 16 - 16*image_xscale, c_white, 1)

if prin_state == PRIN_STATE.SHOOT {
	
	
	draw_set_alpha(0.3)
	draw_set_color(c_red)
	draw_line(x - 12, y - 5, parent_player.x, parent_player.y - 8)

	// Reset
	draw_set_alpha(1)
	draw_set_color(c_white)
	
}

