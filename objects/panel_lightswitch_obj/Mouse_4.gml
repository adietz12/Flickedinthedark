/// @description Insert description here
// You can write your code in this editor
if (on=false && visible=true && canbeswitched && image_index!=2){
	on=true
	image_index=1
}
else if (!canbeswitched && visible=true && image_index==0 && roaches==false){
	image_index++
}
else if (player_obj.held_switces>0 && image_index==2){
	image_index=0
	player_obj.held_switces--
}