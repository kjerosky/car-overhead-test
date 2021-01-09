var linearVelocity = MOVE_VELOCITY * (keyboard_check(ord("J")) - keyboard_check(ord("K")));
var angularVelocity = TURN_ANGULAR_VELOCITY * (keyboard_check(ord("A")) - keyboard_check(ord("D")));

speed = linearVelocity;
direction += angularVelocity;
image_angle = direction;
