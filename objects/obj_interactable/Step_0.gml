if interact == 1
{	
	if room == r_house_male
	{
		switch x
		{
			case 245: global.message_name = "HouseM8"; break;
			case 222: global.message_name = "HouseM7"; break;
			case 208: global.message_name = "HouseM6"; break;
			case 189: global.message_name = "HouseM5"; break;
			case 157: global.message_name = "HouseM4"; break;
			case 155: global.message_name = "HouseM3"; break;
			case 126: global.message_name = "HouseM2"; break;
			case 96: global.message_name = "HouseM1"; break;
		}
	}
	if global.message_name != 0
	{
		scr_text_creator();
		interact = 0;
	}
}
