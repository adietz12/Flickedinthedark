/// @description Insert description here
// You can write your code in this editor
on=false
wires_good=false
roaches = [];
roaches_defeated=true
wires = [];

if (wire_count==0){
	wires_good=true	
}
//Panel is gonna act as the minigame manager like the level manager

/* Don't need this shit anymore
show_debug_message("broken_port: "+ string(broken_port))
show_debug_message("wire count: "+ string(wire_count))
show_debug_message("missing switch: "+ string(missing_switch))
*/


lightswitch = instance_create_layer(x+686,y+300,"Panel",panel_lightswitch_obj)
	if (missing_switch){
		lightswitch.image_index=2
	}


port = instance_create_layer(x,y,"Panel",panel_eletricport_obj)
	if (broken_port=true){
		port.image_index=1
	}
	if (gummified_port){
		port.image_index=3
	}
	
if (wire_count>0){
for (var i=0; i<wire_count; i++){
	correct_state = irandom_range(0, 1) == 0;
	wire=instance_create_layer(x+200+50*i,y+120,"Panel", wire_obj, {correct_state:correct_state})
	wire.depth=1
	wire.image_index=i*2
	wire.startindex=i*2
	show_debug_message("Wire number " + string(i+1)+ " state: " + string(correct_state))
	array_push(wires, wire);
	
	
}
// This guarantees one wire is false
var false_wire_index = irandom(wire_count - 1);
wires[false_wire_index].correct_state = false;
show_debug_message("Extra false Wire number " + string(false_wire_index+1)+ " state: " + string(correct_state))
}

for (var i=0; i<roach_count; i++){
	roach = instance_create_layer(x+irandom_range(200,900), y+irandom_range(50,600), "Panel", panel_roach_obj)	
	roach.depth=1
	array_push(roaches, roach)
	roaches_defeated=false
}





port.depth=1
lightswitch.depth=1
hand = instance_create_layer(x+800,y+324,"Panel",hand_obj)
hand.depth=0
