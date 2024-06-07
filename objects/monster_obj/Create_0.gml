/// @description Insert description here
// You can write your code in this editor
path = path_add();
pathdx = -1000;
pathdy = -1000;

enum MONSTER_STATE {
	IDLE,
	WANDERING,
	CHASING
}

monster_speed = 3
state = MONSTER_STATE.IDLE
should_avoid_light = true
chasing_idol = false

//wander
wandirx = 0
wandiry = 0
wandount = 0

avoids_light = function(){
	return (should_avoid_light)
}

state_idle = function(){
	if state == MONSTER_STATE.IDLE {
		return	
	}
	path_end();
	state = MONSTER_STATE.IDLE;
}

state_wandering = function(){
	if state == MONSTER_STATE.WANDERING {
		return	
	}
	path_end();
	state = MONSTER_STATE.WANDERING;
}

state_chasing = function(){
	if state == MONSTER_STATE.CHASING {
		return	
	}
	path_end();
	state = MONSTER_STATE.CHASING;
}

pathfind_to = function(dx,dy){
	if abs(pathdx - dx) > 16 or abs(pathdy - dy) > 16{
		pathdx = dx;
		pathdy = dy;
		if avoids_light(){
			return mp_grid_path(global.grid_lamps, path, x, y, dx, dy, 1);
		}
		else{
			return mp_grid_path(global.grid, path, x, y, dx, dy, 1);
		}
	}
	return false
}