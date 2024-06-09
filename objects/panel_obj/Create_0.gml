/// @description Insert description here
// You can write your code in this editor
panelid = 0

on=false
//Panel variables from lightswitch
//Issue of these getting overriden for some reason when they should be pulling values straight from lightswitch_obj
if (!variable_instance_exists(self, "panelid")) panelid = 0;
if (!variable_instance_exists(self, "broken_port")) broken_port = false;
if (!variable_instance_exists(self, "wire_count")) wire_count = 0;
if (!variable_instance_exists(self, "missing_switch")) missing_switch = false;
show_debug_message("panel broken_port bool is: "+ string(broken_port))

//Panel is gonna act as the minigame manager like the level manager

lightswitch = instance_create_layer(x+686,y+300,"Panel",panel_lightswitch_obj)
port = instance_create_layer(x,y,"Panel",panel_eletricport_obj)
port.depth=1

lightswitch.depth=1
hand = instance_create_layer(x+800,y+324,"Panel",hand_obj)
hand.depth=0
