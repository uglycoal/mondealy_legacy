if alpha > 0
{
	alpha -= fadespeed;
	if alpha == 0
	{
		instance_destroy();
	}
}