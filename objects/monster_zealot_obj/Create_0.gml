/// @description Insert description here
// You can write your code in this editor
event_inherited()

should_avoid_light = false
monster_speed = 5.0

enum ZEALOT_STATE {
	CHASING_PLAYER,
	CHASING_IDOL,
	WAITING,
}

zealot_state = -1
idol = noone

getwaittime = function(){
	return random_range(30,60)	
}

waiting_time = getwaittime()

zwait = function(){
	if zealot_state == ZEALOT_STATE.WAITING{
		return	
	}
	zealot_state = ZEALOT_STATE.WAITING
	visible = false
	x = xstart
	y = ystart
	if idol != noone{
		instance_destroy(idol)	
	}
	waiting_time = getwaittime()
	state_idle()
}
zidol = function(){
	if zealot_state == ZEALOT_STATE.CHASING_IDOL{
		return	
	}
	zealot_state = ZEALOT_STATE.CHASING_IDOL
	chasing_idol = true
	visible = true
	state_chasing()
}
zplayer = function(){
	if zealot_state == ZEALOT_STATE.CHASING_PLAYER{
		return	
	}
	zealot_state = ZEALOT_STATE.CHASING_PLAYER
	chasing_idol = false
	visible = true
	state_chasing()
}

zwait()


