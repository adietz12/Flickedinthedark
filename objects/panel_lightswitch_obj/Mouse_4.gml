/// @description Insert description here
// You can write your code in this editor
if (on=false && visible=true && canbeswitched){
	on=true
	image_index=1
	instance_nearest(player_obj.x,player_obj.y,lightswitch_obj).close_panel()
}

if (!canbeswitched && visible=true && image_index==0 && roaches==false){
	image_index++
}