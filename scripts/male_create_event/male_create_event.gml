function male_create_event() {
	if global.picked_boy
	{
		has_control = true;
		switch global.follower
		{
			case "Ellie":
			if !instance_exists(obj_follower)
			{
				instance_create_depth(0,0,0, obj_follower)
			}
			scr_create_follower(obj_male, obj_female); break;
		}
		persistent = true;
	}
	else
	{
		has_control = false;
		persistent = false;
	}


}
