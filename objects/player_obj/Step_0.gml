/// @description Insert description here
//Basic movement
right = keyboard_check(ord("D"));
left = -keyboard_check(ord("A"));
up = -keyboard_check(ord("W"));
down = keyboard_check(ord("S"));

horiz = right+left;
vert = up+down;
hspd = horiz*player_spd;
vspd = vert*player_spd;

if (place_meeting(x+hspd,y,paren_walls)){
	while (!place_meeting(x+sign(hspd),y,paren_walls)){
		x+=sign(hspd)
	}
	hspd=0;
}
x+=hspd;
if (place_meeting(x,y+vspd,paren_walls)){
	while (!place_meeting(x,y+sign(vspd),paren_walls)){
		y+=sign(vspd)
	}
	vspd=0;
}
y+=vspd;