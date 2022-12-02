function scr_bar_start_create() {
	if !instance_exists(obj_female)
	{
		instance_create_depth(263, 140, -100, obj_female)
		with obj_female
		{	
			sprite_index = CharFemaleSit;
			image_index = 0;
			image_speed = 0;
		}
	}

	if !instance_exists(obj_male)
	{
		instance_create_depth(206, 139, -100, obj_male)
		with obj_male
		{
			sprite_index = CharMaleSit;
			image_index = 0;
			image_speed = 0;
		}
	}
	if !instance_exists(obj_barnie)
	{
		instance_create_depth(230, 138, 200, obj_barnie)
		with obj_barnie
		{
			sprite_index = BarnieSit;
		}
	}


}
