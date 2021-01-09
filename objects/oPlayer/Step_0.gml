friction = 0;
var newSpeed = speed;
var newDirection = direction;

var desiredMoveMagnitude = oInput.moveForward - oInput.moveBackward;
if (desiredMoveMagnitude > 0) {
	newSpeed = min(FORWARD_MAX_SPEED, newSpeed + FORWARD_ACCELERATION);
} else if (desiredMoveMagnitude < 0) {
	if (newSpeed > 0) {
		friction = FORWARD_BRAKING_FRICTION;
	} else {
		newSpeed = max(BACKWARD_MAX_SPEED, newSpeed + BACKWARD_ACCELERATION);
	}
} else {
	friction = IDLE_FRICTION;
}

newDirection += sign(newSpeed) * TURN_ANGULAR_VELOCITY * (oInput.turnLeft - oInput.turnRight);

speed = newSpeed;
direction = newDirection;
image_angle = direction;
