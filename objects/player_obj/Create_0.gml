//This is our player creation script so like anything the player does or needs to do is defined here
//

enum STATE{
	WALKING,
	REPAIRING,
}

//sorry babe I gotta overwrite this one
state = STATE.WALKING
//Then like speed and other basic shit
player_spd = 2.0
//thanks babe

flip = false
//wheres the fucking vectors at aj??? you said gamemaker was GOOD dammit!
velocity_x = 0.0
velocity_y = 0.0

anim_frame = 0

flashlight_beam = instance_create_layer(x,y,"Instances",light_source_beam_obj)

set_state_walking = function(){
	state = STATE.WALKING
}

set_state_repairing = function(){
	state = STATE.REPAIRING
}