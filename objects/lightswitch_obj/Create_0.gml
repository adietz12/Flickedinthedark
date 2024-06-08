
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
	camera_x = camera_get_view_x(view_camera[0]);
	camera_y = camera_get_view_y(view_camera[0]);
	
	if (panel==noone){
	panel = instance_create_layer(camera_x,camera_y,"Panel",panel_obj)
	panel.panelid=panelid
	//So shit doesn't get drawn under the panel
	panel.depth=2
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
	if (panel.on=true){
		show_debug_message("That bitch is turned ON")
		draw_state=DRAW.REPAIRED
		repaired=true
	}
	return	
}
