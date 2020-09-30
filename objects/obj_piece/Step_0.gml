///@desc Phases

switch (phase) {
	// Fade in
	case OBJ_PIECE.ENTERING:
		progress += rate;
		if (progress >= 1) {
			progress = 1;
			phase = OBJ_PIECE.IDLE;
		}
		image_xscale = lerp(1.25, 1, progress);
		image_yscale = image_xscale;
		image_alpha = progress;
	break;
	// Idle
	case OBJ_PIECE.IDLE:
	break;
	// Flipping
	case OBJ_PIECE.FLIPPING:
		progress += rate;
		if (progress >= 1) {
			progress = 1;
			phase = OBJ_PIECE.IDLE;
			image_xscale = 1;
		} else {
			image_xscale = abs(cos(pi*progress));
			if (progress > 0.5 && progress-rate <= 0.5) {
				setPlayer(-player);
			}
		}
	break;
	// Fading
	case OBJ_PIECE.FADING:
		progress += rate;
		image_alpha = 1-progress;
		if (progress >= 1) {
			instance_destroy();
		}
	break;
}
