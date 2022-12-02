function animation_and_checkers() {
	switch dir
	{
		case 0:
		xchecker = 0;
		ychecker = -6;
		if global.picked_boy
		{
			current_animation = CharMaleUp;
		}
		else
		{
			current_animation = CharFemaleUp;
		}
		current_speed = 1;
		current_xscale = 1;	
		break;
			
		case 1:
		xchecker = 6;
		ychecker = 0;
		if global.picked_boy
		{
			current_animation = CharMaleRL;
		}
		else
		{
			current_animation = CharFemaleRL;
		}
		current_speed = 1;
		current_xscale = 1;	
		break;
			
		case 2:
		xchecker = 0;
		ychecker = 4;
		if global.picked_boy
		{
			current_animation = CharMaleDown;
		}
		else
		{
			current_animation = CharFemale;
		}
		current_speed = 1;
		current_xscale = 1;	
		break;
			
		case 3:
		xchecker = -6;
		ychecker = 0;
		if global.picked_boy
		{
			current_animation = CharMaleRL;
		}
		else
		{
			current_animation = CharFemaleRL;
		}
		current_speed = 1;
		current_xscale = -1;	
		break;
	}


}
