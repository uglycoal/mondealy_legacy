///@arg obj
///@arg string_variable
///@arg new_value
function scene_change_variable(argument0, argument1, argument2) {

	with (argument0)
	{
		variable_instance_set(id, argument1, argument2);
	}
	scene_next();


}
