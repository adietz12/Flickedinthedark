/// @description Insert description here
// You can write your code in this editor
event_inherited()

funne_timer -= 1
if funne_timer < 0{
	funne_timer = random_range(300,600)
	if random_range(0.0,1.0) < 0.75{
		state_chasing()	
	}
	else {
		state_wandering()	
	}
}

if (instance_place(x,y,light_source_obj)) {
	entropy = min(entropy+0.01,1.0)
	state_chasing()
	if entropy >= 1.0 {
		respawn()	
	}
}else{
	entropy = max(entropy-0.02,0.0)
}
