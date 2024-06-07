/// @description Insert description here
// You can write your code in this editor
event_inherited()

if zealot_state == ZEALOT_STATE.WAITING {
	waiting_time -= 1
	if waiting_time <= 0 and player_obj.state == STATE.REPAIRING{
		idol = instance_create_layer(player_obj.x,player_obj.y,"Instances",monster_zealot_idol_obj)
		idolx = idol.x
		idoly = idol.y
		zidol()	
	}
}
else if zealot_state == ZEALOT_STATE.CHASING_PLAYER {
	if not player_obj.is_lit {
		zidol()	
	}
}
else if zealot_state == ZEALOT_STATE.CHASING_IDOL {
	if abs(idolx - x) < 32 and abs(idoly - y) < 32 {
		zwait()	
	}
	else if player_obj.is_lit {
		zplayer()	
	}
	
}