///@desc Setup
_room = undefined; //Will be overridden
// Start transparent
image_alpha = 0;
// Finite state machine counter
phase = 0;
// Fade progress (range [0, 1])
progress = 0;
progress_speed = 4/room_speed;
// Tell everyone an animation is going on
global.animating = true;
