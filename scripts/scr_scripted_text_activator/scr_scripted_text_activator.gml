function scr_scripted_text_activator() {
#region game start
	if room == r_pickcharacter
	{
		if scr_return_story_var() == 0
		{
			global.message_delay_start = 90;
			scr_message_set("GameIntroducing");
			scr_text_creator();
			obj_text_writer.textspeed = 0.5;
			scr_story_further(1)
		}
		if instance_exists(obj_text_writer)
		{
			if scr_return_writer_message_var() == 3 and scr_return_counter_var() == string_length(global.str_to_show) and !instance_exists(obj_dialogue_picker)
			{
				scr_create_picker(0)
			}
			if scr_return_writer_message_var() == 4 and scr_return_counter_var() == 20
			{
				scr_create_fader(0.01, c_white, 0)
			}
		}
	}
#endregion
	if room == r_bar
	{
	#region 1 сцена начала в баре
		if scr_return_story_var() == 1
		{
			global.day = 1;
			global.day_time = "Night";
			scr_bar_start_create();
			global.message_delay_start = 60;
			scr_message_set("BarStart")
			scr_text_creator();
			scr_story_further(1);
		}
	#endregion
	#region 2 дать контроль персонажа
		if scr_return_story_var() == 2
		{
			if !instance_exists(obj_text_writer)
			{
				if scr_return_char_boy_var() == true
				{
					with obj_male
					{	
						image_speed = 1
						has_control = false;
						if image_index >= 7
						{
							has_control = true;
							sprite_index = CharMaleDownStand;
							x += 10;
							y += 2;
							scr_story_further(1);
						}
					}
				}
				if global.picked_girl == true
				{
					with obj_female
					{
						image_speed = 1
						has_control = false;
						if image_index >= 9
						{
							has_control = true;
							sprite_index = CharFemale;
							y += 17;
							scr_story_further(1);
						}
					}
				}
			}
		}
	#endregion
	#region 3 создать персонажей заново если игрок вышел из комнаты
		if scr_return_story_var() == 3
		{
			scr_bar_start_create()
		}
	#endregion
	#region 3 за гг мальчика, диалог с гг девочкой, после которого она следует
		if scr_return_story_var() == 3
		{
			if scr_return_char_boy_var() == true
			{
				if instance_exists(obj_text_writer)
				{
					if scr_return_writer_message_var() == 4
					{
						with obj_female
						{
							image_speed = 1;
						}
						scr_story_further(1)				
					}
				}
			}
		}
	#endregion
	#region 4 при этом кадре анимации у гг девочки, начать следовать
		if scr_return_story_var() == 4
		{
			if scr_return_char_boy_var() == true
			{
				with obj_female
				{
					if image_index == 9
					{
						image_speed = 0;
						follow = true;
						global.follower = "Ellie";
						scr_story_further(1)
					}
				}
			}
		}
	#endregion
	}


}
