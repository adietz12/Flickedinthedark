
//make the lightswitches now babe

enum DRAW {
	DISABLED,
	DISABLED_SWITCHLESS,
	REPAIRED,
}
panel = noone
panelid= random(100)
//determines which sprite is used
draw_state = DRAW.DISABLED
repaired = false

//the fuction that is run when the player interacts with the panel.
interacted = function(player){
	if (player.state == STATE.REPAIRING) {
		player.set_state_walking()
		close_panel()
	} else if (player.state == STATE.WALKING) {
		player.set_state_repairing()
		open_panel()	
	}
}

//open the panel
open_panel = function(){
	if (panel==noone){
	panel = instance_create_layer(576,324,"Panel",panel_obj)
	panel.panelid=panelid
	}
	else{
		panel.visible=true
	}
	show_debug_message("Open sesame")
	return	
}
//close the panel
close_panel = function(){
	panel.visible=false
	show_debug_message("Closed that bitch")
	return	
}
