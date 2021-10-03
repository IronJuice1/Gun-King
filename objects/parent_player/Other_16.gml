/// @desc Animation

if is_dead {
	if sprite_index != s_explosion {
		
		sprite_index = s_explosion	

		instance_create_layer(x, y, "Projectiles", show_title_end)
	
	}
	
	
}

if hsp > 0 { image_xscale = 1 }
else if hsp < 0 { image_xscale = -1 }
