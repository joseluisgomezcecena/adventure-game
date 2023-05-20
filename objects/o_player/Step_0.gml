/// @description Insert description here
// You can write your code in this editor

#region Setup controls

right = keyboard_check(vk_right)
left = keyboard_check(vk_left)
up = keyboard_check(vk_space)
down = keyboard_check(vk_down)
up_release = keyboard_check_released(vk_space)


#endregion



#region State Machine

switch (state)
{

	#region Move
	case player.moving:
	
		if (right || left) 
		{
			xspeed += (right - left) * acceleration;
			xspeed = clamp(xspeed, -max_speed, max_speed);
		}
		else 
		{
			apply_friction(acceleration);
		}
		
		move(o_solid);
	
	break;
	#endregion

	#region Ledge Grab
	case player.ledge_grab:
	
	break;
	#endregion

	#region Door
	case player.door:
	
	break;
	#endregion
	
	
	#region Hurt
	case player.hurt:
	
	break;
	#endregion
	
	#region Dead
	case player.dead:
	
	break;
	#endregion

}
#endregion 