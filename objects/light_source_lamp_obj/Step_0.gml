/// @description Insert description here
// You can write your code in this editor
event_inherited()

if not started {
	mp_grid_add_instances(global.grid_lamps, self, true);
	started = true
}