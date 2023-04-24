///@desc Setup

// Pick black or white and freeze the frame
sprite_index = choose(spr_black, spr_white);
image_speed = 0;

// Randomize spinning speed and angle, falling speed, size and transparency
// The spinning is a horizontal flip emulating 3D
theta = random(2*pi);
theta_speed = random_range(pi/game_get_speed(gamespeed_fps)/2, pi/game_get_speed(gamespeed_fps));
vspeed = irandom_range(2, 4);
scale = random_range(0.2, 0.4);
image_xscale = scale*sin(theta);
image_yscale = scale;
image_alpha = random_range(0.1, 0.3);
