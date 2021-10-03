
//Check if we are inside the button
is_inside = false

current_sprite = noone

/*
This variable overrides "width" and "size" to fit "text"
*/
if size_match_text {
	event_user(2)
}

if icon_sprite_highlight {
	
	upixelW = shader_get_uniform(sh_outline_yellow, "pixelW")
	upixelH = shader_get_uniform(sh_outline_yellow, "pixelH")
	var _s = sprite_get_texture(icon_sprite, 0)
	texelW = texture_get_texel_width(_s)
	texelH = texture_get_texel_height(_s)
	
}
