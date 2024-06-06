/// @description Insert description here
//Basic movement

//you gotta make em' local variables babe
var right = keyboard_check(ord("D"));
var left = -keyboard_check(ord("A"));
var up = -keyboard_check(ord("W"));
var down = keyboard_check(ord("S"));

var horiz = right+left;
var vert = up+down;
velocity_x = horiz*player_spd
velocity_y = vert*player_spd

anim_frame += 1
if (anim_frame >= 30){
	anim_frame = 0
}

if (state == STATE.WALKING){

	if (place_meeting(x+velocity_x,y,wall_obj)){
		while (!place_meeting(x+sign(velocity_x),y,wall_obj)){
			x+=sign(velocity_x)
		}
	} else {
		x+=velocity_x;
	}
	if (place_meeting(x,y+velocity_y,wall_obj)){
		while (!place_meeting(x,y+sign(velocity_y),wall_obj)){
			y+=sign(velocity_y)
		}
	} else {
		y+=velocity_y;
	}
}