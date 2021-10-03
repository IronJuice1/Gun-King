/// @desc

//Workaround for inputs in html
if mouse_check_button(mb_any) { focus_window() }

mouse_left_clicked = mouse_check_button_pressed(mb_left)
mouse_right_clicked = mouse_check_button_pressed(mb_right)
mouse_any_clicked = mouse_check_button_pressed(mb_any)
mouse_wheel_up_clicked = mouse_wheel_up()
mouse_wheel_down_clicked = mouse_wheel_down()

left_hold = keyboard_check(vk_left) or keyboard_check(ord("A"))
right_hold = keyboard_check(vk_right) or keyboard_check(ord("D"))
down_hold = keyboard_check(vk_down) or keyboard_check(ord("S"))
up_hold = keyboard_check(vk_up) or keyboard_check(ord("W"))

left_clicked = keyboard_check_pressed(vk_left) or keyboard_check_pressed(ord("A"))
right_clicked = keyboard_check_pressed(vk_right) or keyboard_check_pressed(ord("D"))
down_clicked = keyboard_check_pressed(vk_down) or keyboard_check_pressed(ord("S"))
up_clicked = keyboard_check_pressed(vk_up) or keyboard_check_pressed(ord("W"))

action_1_clicked = keyboard_check_pressed(ord("Z")) or keyboard_check_pressed(vk_space) or keyboard_check_pressed(vk_up) or keyboard_check_pressed(ord("W"))
action_1_hold = keyboard_check(ord("Z")) or keyboard_check(vk_space) or keyboard_check(vk_up) or keyboard_check(ord("W"))
action_2_clicked = keyboard_check_pressed(ord("X"))
action_2_hold = keyboard_check(ord("X"))

pause_clicked = keyboard_check_pressed(vk_escape) or keyboard_check_pressed(ord("P"))

shoot_pressed = mouse_check_button_pressed(mb_left) or mouse_check_button_pressed(mb_right)









//Remove triangles? too stupid?
if false {
	
	if mouse_left_clicked
	or mouse_right_clicked
	or mouse_any_clicked
	or mouse_wheel_up_clicked
	or mouse_wheel_down_clicked
	or mouse_right_clicked
	or mouse_right_clicked
	or mouse_right_clicked
	or mouse_right_clicked
	or mouse_right_clicked
	or mouse_right_clicked
	or mouse_right_clicked {
		show_message("How?")	
	}
}
