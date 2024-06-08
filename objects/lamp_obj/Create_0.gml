/// @description Insert description here
// You can write your code in this editor
event_inherited()

on = false

power_it = function(){
	if on {
		return	
	}
	on = true
	instance_create_layer(x+32,y+32,"Instances",light_source_lamp_obj)
}
