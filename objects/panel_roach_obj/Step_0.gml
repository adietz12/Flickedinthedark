/// @description Insert description here
// You can write your code in this editor
// Make it move circular
if (alive){
    circle_radius = 1; 

    // Update roach angle
    image_angle += .5; // Change the angle speed here to control how fast roaches move in a circle

    // Math and shit
    var roach_x = x + circle_radius * cos(degtorad(image_angle));
    var roach_y = y + circle_radius * sin(degtorad(image_angle));

    // Update roach position
    x = roach_x;
    y = roach_y;
}
