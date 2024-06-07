/// @description Insert description here
// You can write your code in this editor
event_inherited()

should_avoid_light = false

get_frame = function(){
	return min(floor(random_range(0,terror*12)),7)
}

//im going to snap
granddad = function(n){
	return random_range(-(n*terror),(n*terror))
}

flipped = function(){
	if state = MONSTER_STATE.CHASING {
		if random(1) > 0.5 {
			return -1.0	
		}
		return 1.0
	}
	else if terror > 0.5 {
		if random(1) > 0.95 {
			return -1.0	
		}
		return 1.0
	}
	else {
		return 1.0
	}
}

monster_speed = 10

terror = 0.0

state_idle()