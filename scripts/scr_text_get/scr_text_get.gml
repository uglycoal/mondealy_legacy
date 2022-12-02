function scr_text_get() {
	switch (global.message_name)
	{
		case "GameIntroducing":
		global.message_scale = 0.5;
		global.message = [ds_map_find_value(global.dialoguemap, 22), 
		ds_map_find_value(global.dialoguemap, 23), 
		ds_map_find_value(global.dialoguemap, 24),
		ds_map_find_value(global.dialoguemap, 25),
		ds_map_find_value(global.dialoguemap, 28)];
		break;
	
		case "BarStart":
		global.message = ["Together, we have finally completed this project.",
		"Glad that now you can spend more time with Ellie.",
		"What are you going to do now?",
		"Not sure yet... And you? You'll go to the big city again?",
		"Exactly, I will be here just for a few more days.",
		"Got it, see you when I see you, Barnie. I need to take her home.",
		"Gosh, finally, i'm already tired of this place. It's... not bad, but boring.",
		"She will understand some day."];
		if obj_text_writer.message_showing >= 0 and obj_text_writer.message_showing <= 2
		{
			global.portrait = BarnieTalk;
		}
		if obj_text_writer.message_showing = 3
		{
			global.portrait = MichaelTalk;
		}
		if obj_text_writer.message_showing = 4
		{
			global.portrait = BarnieTalk;
		}
		if obj_text_writer.message_showing = 5
		{
			global.portrait = MichaelTalk;
		}
		if obj_text_writer.message_showing = 6
		{
			global.portrait = EllieDefault;
		}
		if obj_text_writer.message_showing = 7
		{
			global.portrait = BarnieHappy;
		}
		break;
	
		case "EllieBarStart":
		global.message = ["Hey. Are we going already?", "Yea.", "Alright, maybe we can visit beach too?", "Yea, why not.", "Let's go then."];
		if obj_text_writer.message_showing = 0
		{
			global.portrait = EllieTalk;
		}
		if obj_text_writer.message_showing = 1
		{
			global.portrait = MichaelTalk;
		}
		if obj_text_writer.message_showing = 2
		{
			global.portrait = EllieTalk;
		}
		if obj_text_writer.message_showing = 3
		{
			global.portrait = MichaelHappy;
		}
		if obj_text_writer.message_showing = 4
		{
			global.portrait = EllieHappy;
		}
		break;
	
		case "Test":
		global.message = ["Testing dialogue system.", "Works fine, as intended, what a great day."]
		break;
	
		case "Test2":
		global.message = ["Testing dialogue system.", "Works fine, as intended, what a great day."]
		break;
	
		case "DarkStorage":
		global.message = ["Oh, it's very dark here.", "I don't have a flashlight of course."]
		break;
	
		case "HouseM1":
		global.message = ["This is a painting of nearby lake.", "Your friend Dairy painted it."]
		break;
	
		case "HouseM2":
		global.message = ["Your lovely and comfy chair.", "Smells like nice feelings of past."]
		break;
	
		case "HouseM3":
		global.message = ["Sometime the day for this fedora will come. Sometime..."]
		break;

		case "HouseM4":
		global.message = ["You don't remember when you played this flute last time.", "Maybe you have never played it."]
		break;
	
		case "HouseM5":
		global.message = ["Just a small chair. You eat here."]
		break;
	
		case "HouseM6":
		global.message = ["This is your cleanest bowl.", "Other ones are not leaving sink for months.", "Are you proud of it?"]
		break;
	
		case "HouseM7":
		global.message = ["They are clean already.", "Why they are still in there? No one knows."]
		break;

		case "HouseM8":
		global.message = ["There is so much tasty things in there... There was.", "But maybe there is a lot of stuff, you can't tell without opening it."]
		break;
	}

	if global.portrait == 0
	{
		max_text_width = 620;
	}
	else
	{
		max_text_width = 510;
	}


}
