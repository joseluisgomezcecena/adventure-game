/// @description Insert description here
// You can write your code in this editor
max_speed = 4;
xspeed = 0;
yspeed = 0;
acceleration = 1;
gravity_acceleration = .5;
jump_height = -9;

enum player {

	moving,
	ledge_grab,
	door,
	hurt,
	dead,
	attack

}

state = player.moving;



