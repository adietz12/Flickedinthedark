
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
getwirecount = function(){
	return wirecount;
}
//open the panel
open_panel = function(){
	camera_x = camera_get_view_x(view_camera[0]);
	camera_y = camera_get_view_y(view_camera[0]);
	
	if (panel==noone){
	panel = instance_create_layer(camera_x,camera_y,"Panel",panel_obj,{
		broken_port:broken_port,
		wire_count:wire_count,
		missing_switch:missing_switch,
		lightswitch_id:panelid
		})
	
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
		repair_the_panel()
	}
	return	
}

// me omw to create merge conflicts
repair_the_panel = function(){
	if repaired{
		return
	}
	repaired = true
	// signal to tell the game which lightswitch was repaired
	level_manger_obj.switch_repaired(lightswitch_id)
	// lightswitch_id is defined the the object's variable definitions. This allows the id to be changed from the level editor
	// define things like which wires there should be and which ones are the correct ones there too for the same reason
}
