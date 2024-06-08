/// @description Insert description here
// You can write your code in this editor
panelid = 0

on=false
//Panel is gonna act as the minigame manager like the level manager

lightswitch = instance_create_layer(x+576,y+324,"Panel",panel_lightswitch_obj)
lightswitch.depth=1
hand = instance_create_layer(x+800,y+324,"Panel",hand_obj)
hand.depth=0