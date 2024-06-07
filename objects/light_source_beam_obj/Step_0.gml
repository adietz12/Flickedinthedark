/// @description Insert description here
// You can write your code in this editor

var bx = x
var by = y

var ix = cos(degtorad(rotation))
var iy = sin(degtorad(rotation))

var longth = sqrt(sqr(mouse_x-x)+sqr(mouse_y-y))

beam_length = 0
var maxlongth = min(longth,220)
while(!collision_point(bx+ix,by+iy,wall_obj,false,false) and beam_length < maxlongth){
	bx += ix
	by -= iy
	beam_length += 1
}

sizex = beam_length/220

beam_end.x = bx
beam_end.y = by