function return_stage() {
	var stage = 0;
	switch global.story_stage
	{
		case 0: 
		case 1:
		case 2:
		case 3:
		case 4:
		case 5:
		case 6:
		case 7:
		case 8:
		case 9: stage = ds_map_find_value(global.dialoguemap, 33); break;
	}
	return stage;


}
