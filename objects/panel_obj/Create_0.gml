/// @description Insert description here
// You can write your code in this editor
panelid = 0

on=false
//Panel is gonna act as the minigame manager like the level manager

lightswitch = instance_create_layer(x+686,y+300,"Panel",panel_lightswitch_obj)
port = instance_create_layer(x,y,"Panel",panel_eletricport_obj)
port.depth=1
switch irandom(1){
case 0:
port.image_index=0
case 1:
port.image_index=1

}

lightswitch.depth=1
hand = instance_create_layer(x+800,y+324,"Panel",hand_obj)
hand.depth=0
