
//make the lightswitches now babe

enum DRAW {
	DISABLED,
	DISABLED_SWITCHLESS,
	REPAIRED,
}

//determines which sprite is used
draw_state = DRAW.DISABLED
repaired = false

//the fuction that is run when the player interacts with the panel.
interacted = function(player){
	if (player.state == player.STATE.REPAIRING) {
		player.set_state_walking()
		close_panel()
	} else {
		player.set_state_repairing()
		open_panel()	
	}
}

//open the panel
open_panel = function(){
	return	
}
//close the panel
close_panel = function(){
	return	
}
