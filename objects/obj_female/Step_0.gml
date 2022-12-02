//#region если персонаж выбран
//if global.picked_girl == true
//{	
//	depth = -y;
//	up = keyboard_check(global.key_up);
//	down = keyboard_check(global.key_down);
//	left = keyboard_check(global.key_left);
//	right = keyboard_check(global.key_right);
//	interact = keyboard_check_pressed(global.key_confirm);
//	menu = keyboard_check_pressed(global.key_menu);
//	cancel = keyboard_check_pressed(global.key_cancel);
//	use = keyboard_check_pressed(global.key_use);

//	if down
//	{
//		dir = 2;
//	}
//	if up
//	{
//		dir = 0;
//	}
//	if right
//	{
//		dir = 1;
//	}
//	if left
//	{
//		dir = 3;
//	}


//	if global.message_delay > 0
//	{
//		global.message_delay--;
//	}

//	if instance_exists(obj_text_writer) or instance_exists(obj_scene) or global.message_delay_start > 0
//	{
//		player_control = false;
//	}
//	if scr_return_story_var() != 2 and !player_control and (instance_exists(obj_text_writer) or instance_exists(obj_scene) or global.message_delay_start > 0 or instance_exists(obj_fader) or instance_exists(obj_menu))
//	{
//		image_index = 3;
//		image_speed = 8;
//	}
//	if player_control = true
//	{
//		switch dir
//		{
//			case 0:
//			xchecker = 0;
//			ychecker = -4;
//			break;
		
//			case 1:
//			xchecker = 4;
//			ychecker = 0;
//			break;
		
//			case 2:
//			xchecker = 0;
//			ychecker = 4;
//			break;
		
//			case 3:
//			xchecker = -4;
//			ychecker = 0;
//			break;
//		}
//		#region Movement
//		{
//		//Movement
//			if left && !right
//			{
//			   if !instance_place(x-global.walkspeed,y,obj_Collision)
//			   {
//			      x -= global.walkspeed;
//			   }
//			}
//			if !left && right
//			{
//			   if !instance_place(x+global.walkspeed,y,obj_Collision)
//			   {
//			      x += global.walkspeed;
//			   }
//			}
//			if up && !down
//			{
//		       if !instance_place(x,y-global.walkspeed,obj_Collision)
//			   {
//			      y -= global.walkspeed;
//			   }
//			}
//			if !up && down
//			{
//			   if !instance_place(x,y+global.walkspeed,obj_Collision)
//			   {
//			      y += global.walkspeed;
//			   }
//			}
//			if right && down && left
//			{
//				y = yprevious
//			}
//		}
//		#endregion
//		#region Graphics
//		//Graphics
//		//Moving Left
//		if dir == 3
//		{
//		   sprite_index = CharFemaleRL;
//		   image_speed = 1;
//		   image_xscale = -1;
//		   if (x == xprevious && y == yprevious)
//		   {
//		      image_index = 3;
//		      image_speed = 0;
//		   }
//		}
//		//Moving Right
//		if dir == 1
//		{
//			sprite_index = CharFemaleRL;
//			image_speed = 1;
//			image_xscale = 1;
//			if (x == xprevious && y == yprevious)
//			{
//				image_index = 3;
//				image_speed = 0;
//			}
//		}
//		//Moving Up
//		if dir == 0
//		{
//		   sprite_index = CharFemaleUp;
//		   image_speed = 1;
//		   image_xscale = 1;
//		   if (x == xprevious && y == yprevious)
//		   {
//		      image_index = 3;
//		      image_speed = 0;
//		   }
//		}
//		//Moving Down
//		if dir == 2
//		{
//		   sprite_index = CharFemale;
//		   image_speed = 1;
//		   image_xscale = 1;
//		   if (x == xprevious && y == yprevious)
//		   {
//		      image_index = 3;
//		      image_speed = 0;
//		   } 
//		}

//		if (right && up) or (right && down)
//		{
//			sprite_index = CharFemaleRL;
//			image_speed = 1;
//			image_xscale = 1;
//		}

//		if (left && up) or (left && down)
//		{
//			sprite_index = CharFemaleRL;
//			image_speed = 1;
//			image_xscale = -1;
//		}

//		if !(left or right or down or up)
//		{
//		  image_index = 3;
//		  image_speed = 8;
//		}
//		if (left && up) or (right && up)
//		{
//			if (x == xprevious)
//			{
//				sprite_index = CharFemaleUp
//				image_xscale = 1;
//			}
//		}
//		if (left && down) or (right && down)
//		{
//			if (x == xprevious)
//			{
//				sprite_index = CharFemale
//				image_xscale = 1;
//			}
//		}			
//		#endregion
//		#region interaction
//		if interact and !instance_exists(obj_text_writer) and global.message_delay == 0
//		{	
//			var xx = x + xchecker;
//			var yy = y + ychecker;
//			var inst = instance_place(xx, yy, obj_interactable)
//			var inst_warper = instance_place(x, y, obj_Warper)
//			var inst_save = instance_place(xx, yy, obj_savepoint)
//			#region dialogues
//			if inst != noone
//			{
//				with inst
//				{
//					interact = 1;
//				}
//				player_control = false;
//			}
//			#endregion
//			#region room goto
//			if inst_warper != noone
//			{
//				if inst_warper.warp_press and !instance_exists(obj_fader)
//				{
//					with inst_warper
//					{
//						do_warp = true;
//						warp_press = false;
//					}
//				}
//			}
//			#endregion
//			#region save
//			if inst_save != noone
//			{
//				scr_game_save();
//				with inst_save
//				{
//					active = 1;
//				}
//			}
//			#endregion
//		}
//		#endregion
//	}
//	#region menu
//	if keyboard_check_pressed(global.key_menu) and !instance_exists(obj_menu)
//	{
//		scr_ingamemenu_open(obj_female);
//	}
//	else if keyboard_check_pressed(global.key_menu) and instance_exists(obj_menu) and obj_menu.page != 2
//	{
//		scr_ingamemenu_close(obj_female);
//	}
//	#endregion
//}
//#endregion
#region следовать за игроком
if follow == true
{
	depth = -y;
	if !instance_exists(obj_follower)
	{
		instance_create_depth(0,0,0,obj_follower)
	}
	#region позиция 
	//стандартная позиция--------------------------------------------------------------------------//
	if ds_list_find_value(global.follow_x, ds_list_size(global.follow_x) - 10) == undefined
	{
		x = x;
	}
	else
	{
		x = ds_list_find_value(global.follow_x, ds_list_size(global.follow_x) - 10)
	}
	if ds_list_find_value(global.follow_y, ds_list_size(global.follow_y) - 10) == undefined
	{
		y = y;
	}
	else
	{
		y = ds_list_find_value(global.follow_y, ds_list_size(global.follow_y) - 10)
	}
	if ds_list_find_value(global.follow_dir, ds_list_size(global.follow_dir) - 10) == undefined
	{
		dir = dir;
	}
	else
	{
		dir = ds_list_find_value(global.follow_dir, ds_list_size(global.follow_dir) - 10);
	}
	//-------------------------------------------------------------------------------------------------//
	#endregion
	#region анимация
	if dir == 3
	{
		sprite_index = CharFemaleRL;
		image_speed = 1;
		image_xscale = -1;
		if obj_male.x == obj_male.xprevious and obj_male.y == obj_male.yprevious
		{
			image_index = 3;
			image_speed = 4;
		}
	}
	//Moving Right
	if dir == 1
	{
		sprite_index = CharFemaleRL;
		image_speed = 1;
		image_xscale = 1;
		if obj_male.x == obj_male.xprevious and obj_male.y == obj_male.yprevious
		{
			image_index = 3;
			image_speed = 4;
		}
	}
	//Moving Up
	if dir == 0
	{
		sprite_index = CharFemaleUp;
		image_speed = 1;
		image_xscale = 1;
		if obj_male.x == obj_male.xprevious and obj_male.y == obj_male.yprevious
		{
			image_index = 3;
			image_speed = 4;
		}
	}
	//Moving Down
	if dir == 2
	{
		sprite_index = CharFemale;
		image_speed = 1;
		image_xscale = 1;
		if obj_male.x == obj_male.xprevious and obj_male.y == obj_male.yprevious
		{
			image_index = 3;
			image_speed = 5;
		}
	}
	#endregion
}
#endregion
if !(interaction == 0)
{
	event_perform(ev_other, ev_user1)	
}
if !follow and !global.picked_girl and !player_control
{
	depth = -y;
}