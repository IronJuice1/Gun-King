
var _input = _ctrl_input

#region Decide "_check" using our button variables

	var _check = true

#endregion

//Check for collision with the button
if _check {

	//Check if we are inside
	var w2 = width/2
	var h2 = height/2
	
	if draw_in_gui {
		var _check2 = point_in_rectangle(MOUSE_GUI_X, MOUSE_GUI_Y, x - w2, y - h2, x + w2, y + h2)
	} else {
		var _check2 = point_in_rectangle(M_X, M_Y, x - w2, y - h2, x + w2, y + h2)
	}
	
	if is_inside == false {
		if  _check2 {
			
			is_inside = true
			current_sprite = nine_slice_sprite_hover
			
			//Play sound
			
		}
	}
	else {
		if not _check2 {
			is_inside = false
			
			//Set sprite to normal
			current_sprite = noone
			
		}
	}
	
	if is_inside {
		show_hover_text = true	
	} else {
		show_hover_text = false	
	}

	if is_inside {
		
		if _input.mouse_left_clicked {
			
			//Here we have cliked the button
			event_user(1)
			current_sprite = nine_slice_sprite_click
			
		}
		
		if mouse_check_button_released(mb_left) {
			current_sprite = noone
		}
		
	}
}


