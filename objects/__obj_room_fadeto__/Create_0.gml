///@desc Setup
_room = undefined; //Will be overridden
// Start transparent
image_alpha = 0;
// Finite state machine counter
phase = 0;
// Fade progress (range [0, 1])
progress = 0;
progress_speed = 4/game_get_speed(gamespeed_fps);
// Tell everyone an animation is going on
global.animating = true;
