/// @description Insert description here
// You can write your code in this editor
event_inherited()

enabled = false

power_it = function(){
	enabled = true
}

interacted = function(){
	if !enabled {
		return	
	}
	global.previous_level = floor_to
	room_goto(floor_to)
}