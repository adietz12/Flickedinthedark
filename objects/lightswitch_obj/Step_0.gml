/// @description Insert description here
// You can write your code in this editor

while panel and panel.on and !repaired {
	repair_the_panel()	
}

if panel and panel.lightswitch {
	if panel.lightswitch.image_index == 0{
		draw_state = DRAW.DISABLED
	}
	else if panel.lightswitch.image_index == 1{
		draw_state = DRAW.REPAIRED
	}
	else if panel.lightswitch.image_index == 2{
		draw_state = DRAW.DISABLED_SWITCHLESS
	}	
	
}