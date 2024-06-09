/// @description Insert description here
// You can write your code in this editor
// Make it move circular
if (alive & visible=true){
	delay--
	if (delay<=0){
		delay=irandom(100)
		image_angle += irandom(360)
	}
	direction = image_angle


    // Math and shit
x = x+lengthdir_x(speed,direction);
y = y+lengthdir_y(speed,direction);
}
