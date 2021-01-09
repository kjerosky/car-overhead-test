var linearVelocity = MOVE_VELOCITY * (oInput.moveForward - oInput.moveBackward);
var angularVelocity = TURN_ANGULAR_VELOCITY * (oInput.turnLeft - oInput.turnRight);

speed = linearVelocity;
direction += angularVelocity;
image_angle = direction;
