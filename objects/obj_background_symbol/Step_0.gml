///@desc Animate

// Rotate by one more bit and clamp within 2*pi
theta += theta_speed;
if (theta > 2*pi) {
	theta -= 2*pi;
}
// Update the horizontal scaling
image_xscale = scale*sin(theta);

///Respawn at the top randomly upon reaching the bottom
if (y > room_height+sprite_height) {
	x = irandom(room_width);
	y = -80;
	event_perform(ev_create, 0);
}
