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

flashlight_beam = noone
flashlight_on = false
flashlight_was_on = false
battery = 100.0

ambient_light = instance_create_layer(x,y,"Instances",light_source_ambient_obj)

is_lit = false

flashlight_update = function(){
	if flashlight_on {
		var beamx = x
		if flip {
			beamx += -10
		} else {
			beamx += 10
		}
		var beamy = y + 12
		flashlight_beam.x = beamx
		flashlight_beam.y = beamy
		var bdiffx = mouse_x - beamx
		var bdiffy = mouse_y - beamy
		flashlight_beam.rotation = radtodeg(arctan(-bdiffy/bdiffx))
		if bdiffx < 0{
			flashlight_beam.rotation += 180	
		}
		flashlight_beam.update_end()
	}	
}

set_flashlight = function(v){
	if (v and battery <= 0.0) {
		return	
	}
	flashlight_on = v
	if (v and flashlight_beam == noone){
		flashlight_beam = instance_create_layer(x,y,"Instances",light_source_beam_obj)	
	}
	else if (!v and flashlight_beam != noone){
		instance_destroy(flashlight_beam)
		flashlight_beam = noone
	}
	flashlight_update()
}

set_state_walking = function(){
	state = STATE.WALKING
}

set_state_repairing = function(){
	state = STATE.REPAIRING
}

set_flashlight(true)