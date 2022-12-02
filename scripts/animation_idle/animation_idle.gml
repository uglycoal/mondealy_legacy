function animation_idle() {
	if dir == 1 and x == xprevious
	{
		if global.picked_boy
		{
			current_animation = CharMaleRLStand;
			current_xscale = 1;
		}
	}
	if dir == 2 and y == yprevious
	{
		if global.picked_boy
		{
			current_animation = CharMaleDownStand;
			current_xscale = 1;
		}
	}
	if dir == 3 and x == xprevious
	{
		if global.picked_boy
		{
			current_animation = CharMaleRLStand;
			current_xscale = -1;
		}
	}


}
