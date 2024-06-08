/// @description Insert description here
// You can write your code in this editor
if jumpscaring {
	jumpscare_frames -= 1	
	if jumpscare_frames <= 0 {
		audio_stop_all()
		room_goto(MainMenu)	
	}
}