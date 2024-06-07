/// @description Insert description here
// You can write your code in this editor
event_inherited()

if (instance_place(x,y,light_source_obj)) {
	if lit == false {
		patience -= random_range(0,1.0)
		if patience <= 0{
			terror = 1.0	
		}
	}
	lit = true
	terror = min(terror+0.005,1.0)
	if terror >= 1.0 {
		state_chasing()
	}
}else{
	lit = false
	terror = max(terror-0.005,0.0)
}