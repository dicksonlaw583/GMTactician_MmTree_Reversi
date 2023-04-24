///@desc Setup
enum OBJ_PIECE {
	ENTERING,
	IDLE,
	FLIPPING,
	FADING
}

// Phase
phase = OBJ_PIECE.ENTERING;
progress = 0;
image_alpha = 0;

// Animate fade and destroy
fadeOut = function() {
	phase = OBJ_PIECE.FADING;
	progress = 0;
};

// Flip
flip = function() {
	phase = OBJ_PIECE.FLIPPING;
	progress = 0;
	audio_play_sound(snd_flip, 1, false);
};

// Set the current player
setPlayer = function(p) {
	player = p;
	sprite_index = (p > 0) ? spr_black : spr_white;
	image_index = 0;
	image_speed = 0;
};
setPlayer(player);
