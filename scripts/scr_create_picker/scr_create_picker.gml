///@arg picked_index
function scr_create_picker(argument0) {
	instance_create_depth(0,0,0,obj_dialogue_picker);
	with obj_dialogue_picker
	{
		picker_index = argument0;
	}


}
