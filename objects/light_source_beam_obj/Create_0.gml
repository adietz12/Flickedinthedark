/// @description Insert description here
// You can write your code in this editor
event_inherited()

beam_length = 220
beam_end = instance_create_layer(x,y,"Instances",light_source_beam_end_obj)

sizey = 1.5

update_end = function(){
	var bx = x
	var by = y

	var ix = cos(degtorad(rotation)) * 16
	var iy = sin(degtorad(rotation)) * 16

	var longth = sqrt(sqr(mouse_x-x)+sqr(mouse_y-y))

	beam_length = 0
	var maxlongth = min(longth,250)
	while(!collision_point(bx+ix,by+iy,[wall_obj,monster_obj,light_wall_obj],false,false) and beam_length < maxlongth){
		bx += ix
		by -= iy
		beam_length += 16
	}

	sizex = beam_length/220

	beam_end.x = bx
	beam_end.y = by
}