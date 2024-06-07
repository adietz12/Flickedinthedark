/// @description Insert description here
//Basic movement

//you gotta make em' local variables babe
var right = keyboard_check(ord("D"));
var left = -keyboard_check(ord("A"));
var up = -keyboard_check(ord("W"));
var down = keyboard_check(ord("S"));
var sprint = keyboard_check(vk_shift);
var interact = keyboard_check_pressed(ord("E"));

var horiz = right+left;
var vert = up+down;
velocity_x = horiz*player_spd
velocity_y = vert*player_spd
if (sprint) {
	velocity_x *= 1.5
	velocity_y *= 1.5
}

anim_frame += 1
if (anim_frame >= 30){
	anim_frame = 0
}

//fleshlight beam management stuff
flashlight_update()

if (interact){
	var s = instance_place(x,y-32,lightswitch_obj)
	if (s != noone){
		
		s.interacted(self)
		if state == STATE.REPAIRING{
			flashlight_was_on = flashlight_on
			set_flashlight(false)
		} else if state == STATE.WALKING{
			set_flashlight(flashlight_was_on)
		}
	}
}

if mouse_check_button_pressed(mb_left) {
	if state != STATE.REPAIRING {
		set_flashlight(!flashlight_on)	
	}
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