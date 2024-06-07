/// @description Insert description here
// You can write your code in this editor
event_inherited()

monster_speed = 0.5;

entropy = 0.0;

funne_timer = 0;

//im going to snap
granddad = function(n){
	return random_range(-1-(n*entropy),1+(n*entropy))
}

respawn = function(){
	x = xstart
	y = ystart
	entropy = 0.9
	state_wandering()
}

state_wandering()
