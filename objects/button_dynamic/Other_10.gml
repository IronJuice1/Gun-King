/// @desc Draw everything

draw_sprite_stretched(nine_slice_always_draw, 0, x - width/2, y - height/2, width, height)

//Nine-slice
if current_sprite != noone {
	draw_sprite_stretched(current_sprite, 0, x - width/2, y - height/2, width, height)
}

//Text
draw_text_shadow(x, y, text, 1, c_white)

//Icon-Sprite
if icon_sprite != noone {
	
	//Draw the sprite "selected"
	if icon_sprite_highlight {
		
		//Draw yellow thing
		if is_inside {
			shader_set(sh_outline_yellow)
			shader_set_uniform_f(upixelW, texelW)
			shader_set_uniform_f(upixelH, texelH)
			draw_sprite_ext(icon_sprite, 0, x, y, icon_sprite_scale, icon_sprite_scale, 0, c_white, 1)
			shader_reset()
		}
		
	}
	
	draw_sprite_ext(icon_sprite, 0, x, y, icon_sprite_scale, icon_sprite_scale, 0, c_white, 1)
}
