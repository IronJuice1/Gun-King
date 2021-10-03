/// @desc

//Make the object a singleton
if (assign_singleton() == false)	exit

enum PLAYER_MOVEMENT_STATE {
	
	ON_GROUND,
	AIR
	
}

invis_frames_max = 30
invis_frames = 0

player_movement_state = PLAYER_MOVEMENT_STATE.ON_GROUND

hsp = 0
vsp = 0

jump_power = 5

//First "dynamic jump" system
jump_adding = 0
jump_timer = 0
jump_timer_duration = 0

//Jump if we click too early
jump_pressed_remember = 0
jump_pressed_remember_value = 12
