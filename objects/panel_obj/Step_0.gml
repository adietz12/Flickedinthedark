/// @description Insert description here
// You can write your code in this editor

//This code is gonna look so ass but let me cook
if (wires == undefined) {
    return; // Exit if the wire array is not yet initialized
}

wires_good = true; // Assume all wires are in the right formation
if (wire_count>0){
for (var i = 0; i < array_length(wires); i++) {
    if (!wires[i].correct_state) {
        wires_good = false; // Set wires_good to false if any wire's correct_state is false
		//show_debug_message("Wires not in right formation")
        break; // Exit the loop early if any wire is false
    }
}
if (wires_good){
	//how_debug_message("Wires are in correct formation")	
}
}
if (visible=false){
	lightswitch.visible=false
	hand.visible=false
	port.visible=false
	for (var i=0; i<wire_count; i++){
	wires[i].visible=false
	}
}
else{
	lightswitch.visible=true
	hand.visible=true
	port.visible=true
	for (var i=0; i<wire_count; i++){
	wires[i].visible=true
	}
}
if (lightswitch.on=true){
	on=true	
}

if (port.image_index!=1){
	if (wires_good){
	lightswitch.canbeswitched=true	
	}
}