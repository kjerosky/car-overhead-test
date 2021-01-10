var speedometerAnchorX = SPEEDOMETER_BUFFER_X;
var speedoMeterAnchorY = oCamera.viewHeight - SPEEDOMETER_BUFFER_Y;
draw_sprite(sSpeedometer, -1, speedometerAnchorX, speedoMeterAnchorY);

var dialCenterX = speedometerAnchorX + sprite_get_width(sSpeedometer) / 2;
var dialCenterY = speedoMeterAnchorY - sprite_get_height(sSpeedometer) / 2;
var dialAngle;
if (oPlayer.speed >= 0) {
	dialAngle = lerp(DIAL_FORWARD_MIN_ANGLE, DIAL_FORWARD_MAX_ANGLE, oPlayer.speed / oPlayer.FORWARD_MAX_SPEED);
} else {
	dialAngle = lerp(DIAL_BACKWARD_MIN_ANGLE, DIAL_BACKWARD_MAX_ANGLE, abs(oPlayer.speed) / abs(oPlayer.BACKWARD_MAX_SPEED));
}
draw_sprite_ext(sDial, -1, dialCenterX, dialCenterY, 1, 1, dialAngle, c_white, 1.0);

