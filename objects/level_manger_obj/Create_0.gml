/// @description Insert description here
// You can write your code in this editor
jumpscaring = false
jumpscare_frames = 120
jumpscare_sprite = noone
jumpscare_shake = 0.0
jumpscare_sound = noone

surf = -1;

jumpscare = function(s,v,b){
	if jumpscaring {
		return	
	}
	jumpscare_sprite = s
	jumpscare_shake = v
	jumpscare_sound = b
	audio_play_sound(jumpscare_sound,100.0,0.0,2.0)
	jumpscaring = true
}

switch_repaired = function(sid){
	return	
}