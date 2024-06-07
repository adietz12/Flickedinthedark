/// @description Insert description here
// You can write your code in this editor
event_inherited()

if (instance_place(x,y,light_source_obj)) {
	terror = min(terror+0.005,1.0)
	if terror >= 1.0 {
		state_chasing()
	}
}else{
	terror = max(terror-0.005,0.0)
}