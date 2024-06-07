/// @description Insert description here
// You can write your code in this editor
event_inherited()

if (instance_place(x,y,light_source_obj)) {
	state_idle()
}else{
	state_chasing()
}