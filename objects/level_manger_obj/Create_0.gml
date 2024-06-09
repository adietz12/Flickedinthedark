/// @description Insert description here
// You can write your code in this editor
jumpscaring = false
jumpscare_frames = 120
jumpscare_sprite = noone
jumpscare_shake = 0.0
jumpscare_sound = noone

surf = -1;

number_of_lightswitches = 0;

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
	number_of_lightswitches -= 1
	if number_of_lightswitches <= 0{
		lighting_controller_obj.darkness = 0.5
		with (powerable_obj) {
			power_it()	
		}
		with (monster_obj) {
			instance_destroy(self)	
		}
		audio_stop_sound(ambiance)
	}
	else {
		with (powerable_obj) {
			if (powered_by == sid){
				power_it()	
			}
		}
	}
}