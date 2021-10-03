/// @desc

#region Initialize singleton objects

var _prefix = "_"
 
var o_index = 0

while (object_exists(o_index))
{
	var name = object_get_name(o_index)
	
	if (string_pos(_prefix,name) == 1)
	{
		with (instance_create_depth(0, 0, SINGLETON_OBJ_DEPTH, o_index))
			persistent = true
	}
	o_index += 1
}

#endregion

//Goto next room to start the game
room_goto_next()
