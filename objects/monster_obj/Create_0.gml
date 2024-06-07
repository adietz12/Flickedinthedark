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

state_idle = function(){
	
}

state_wandering = function(){
	
}

state_chasing = function(){
	
}

pathfind_to = function(dx,dy){
	if abs(pathdx - dx) > 32 or abs(pathdy - dy) > 32{
		pathdx = dx;
		pathdy = dy;
		return mp_grid_path(global.grid, path, x, y, dx, dy, 1);
	}
}