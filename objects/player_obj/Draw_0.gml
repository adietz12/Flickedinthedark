
var frame = 0

if (velocity_x < 0.0) {
	flip = true;
} else if (velocity_x > 0.0) {
	flip = false;
}

if (velocity_x != 0.0 or velocity_y != 0.0){
	if anim_frame < 15 {
		frame = 1
	} else {
		frame = 2
	}
}

if (flip) {
	draw_sprite_ext(spr_man, frame,x+64.0, y, -1.0, 1.0, 0.0, c_white, image_alpha);	
} else {
	draw_sprite_ext(spr_man, frame,x, y, 1.0, 1.0, 0.0, c_white, image_alpha);	
}
