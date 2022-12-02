if global.picked_boy
{
	
	depth = -y;
	up = keyboard_check(global.key_up);
	down = keyboard_check(global.key_down);
	left = keyboard_check(global.key_left);
	right = keyboard_check(global.key_right);
	interact = keyboard_check_pressed(global.key_confirm);
	menu = keyboard_check_pressed(global.key_menu);
	cancel = keyboard_check_pressed(global.key_cancel);
	use = keyboard_check_pressed(global.key_use);
	
	if global.message_delay > 0
	{
		global.message_delay--;
	}
	
	if player_control() == true
	{
		has_control = false;
	}
	
	#region has control
	if has_control
	{
		#region walking
		direction_checking()
		animation_and_checkers()
		if left and !right
		{
			if !instance_place(x-global.walkspeed,y,obj_Collision)
			{
				x -= global.walkspeed;
			}
		}
		else if !left and right
		{
			if !instance_place(x+global.walkspeed,y,obj_Collision)
			{
				x += global.walkspeed;
			}
		}
		if up and !down
		{
			if !instance_place(x,y-global.walkspeed,obj_Collision)
			{
				y -= global.walkspeed;
			}
		}
		else if !up and down
		{
			if !instance_place(x,y+global.walkspeed,obj_Collision)
			{
				y += global.walkspeed;
			}
		}
		if (right and down and left) or (right and up and left)
		{
			y = yprevious
		}	
		animation_idle()
		if dir != -1
		{
			sprite_index = current_animation;
			image_speed = current_speed;
			image_xscale = current_xscale;
		}
		if x != xprevious
		{
			if (right and up) or (right and down)
			{
				sprite_index = CharMaleRL;
				image_speed = 1;
				image_xscale = 1;
			}
			if (left and up) or (left and down)
			{
				sprite_index = CharMaleRL;
				image_speed = 1;
				image_xscale = -1;
			}
		}
		else
		{
			if (left and up) or (right and up)
			{
				sprite_index = CharMaleUp;
				image_speed = 1;
				image_xscale = 1;
			}
			if (left and down) or (right and down)
			{
				sprite_index = CharMaleDown;
				image_speed = 1;
				image_xscale = 1;
			}
		}
		#endregion
		if interact
		{		
			var xx = x + xchecker;
			var yy = y + ychecker;
			var inst = instance_place(xx, yy, obj_interactable)
			var inst_female = instance_place(xx, yy, obj_female)
			var inst_warper = instance_place(x, y, obj_Warper)
			var inst_save = instance_place(xx, yy, obj_savepoint)
			#region dialogues
			if inst != noone and global.message_delay == 0
			{
				has_control = false;
				inst.interact = 1;
			}
			#endregion
			#region Ellie dialogues
			if inst_female != noone
			{
				with inst_female
				{
					interaction = 1
				}
			}
			#endregion
			#region room goto
			if inst_warper != noone
			{
				if inst_warper.warp_press and !instance_exists(obj_fader)
				{
					with inst_warper
					{
						do_warp = true;
						warp_press = false;
					}
				}
			}
			#endregion
			#region save
				if inst_save != noone
				{
					scr_game_save();
					with inst_save
					{
						active = 1;
					}
				}
				#endregion
		}
	}
	#endregion
	if menu and player_control() != true
	{
		image_index = 3;
		image_speed = 0;
		scr_ingamemenu_open(obj_male);
	}
	else if menu and instance_exists(obj_menu)
	{
		scr_ingamemenu_close(obj_male);
	}
}	