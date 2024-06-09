/// @description Insert description here
// You can write your code in this editor
event_inherited()

if not sounding{
	audio_play_sound_on(emitter,snd_stoneslide,9999,50.0,0.5)
	sounding = true
}

audio_emitter_position(emitter,x,y,0)
if (instance_place(x,y,light_source_obj)) {
	state_idle()
	audio_emitter_gain(emitter,0.0)
}else{
	state_chasing()
	audio_emitter_gain(emitter,0.5)
}