/// @description Insert description here
// You can write your code in this editor
event_inherited()

if (instance_place(x,y,light_source_obj)) {
	entropy = min(entropy+0.01,1.0)
}else{
	entropy = max(entropy-0.02,0.0)
}
