/// @desc CLick Button

if instance_exists(parent_gun) {
	parent_gun.cooldown_timer = max(5, parent_gun.cooldown_timer)
}

script_execute(clicked_script)
