/// @description Insert description here
// You can write your code in this editor


if state == MONSTER_STATE.CHASING {
	if (pathfind_to(player_obj.x,player_obj.y) and path != noone) {
		path_start(path, monster_speed, path_action_stop, 1);
	}	
}



else if (state == MONSTER_STATE.WANDERING){
	var cool = [wall_obj]
	if avoids_light(){
		cool = [wall_obj,light_source_obj]	
	}
	wandount -= 1
	if wandount <= 0 {
		wandount += random_range(60,120)
		wandirx = random_range(-1,1) * monster_speed
		wandiry = random_range(-1,1) * monster_speed
	}
	if (place_meeting(x+wandirx,y,cool)){
		var count = wandirx;
		while (!place_meeting(x+sign(wandirx),y,cool)) and count > 0{
			x+=sign(wandirx)
			count -= 1.0
		}
	} else {
		x+=wandirx;
	}
	if (place_meeting(x,y+wandiry,cool)){
		var count = wandirx;
		while (!place_meeting(x,y+sign(wandiry),cool)) and count > 0{
			y+=sign(wandiry)
		}
	} else {
		y+=wandiry;
	}
}