/// @description Insert description here
// You can write your code in this editor
audio_stop_all()
audio_play_sound(ambiance,20.0,9999,2.0)

with (lightswitch_obj) {
	other.number_of_lightswitches += 1	
}

global.grid = mp_grid_create(0, 0, room_width / 64, room_height / 64, 64, 64);
with (wall_obj) {
	mp_grid_add_cell(global.grid,x/64,y/64)
}

global.grid_lamps = mp_grid_create(0, 0, room_width / 64, room_height / 64, 64, 64);
with (wall_obj) {
	mp_grid_add_cell(global.grid_lamps,x/64,y/64)
}