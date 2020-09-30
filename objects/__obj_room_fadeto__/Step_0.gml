///@desc Progress through the phases
switch (phase) {
	case 0: //Fade to black
		progress += progress_speed;
		image_alpha = dsin(progress*90);
		// Change rooms when totally black
		if (progress >= 1) {
			progress = 1;
			image_alpha = 1;
			phase = 1;
		}
		global.animating = true; //Animations ongoing
	break;
	case 1: //Change room
		phase = 2;
		room_goto(_room);
	break;
	case 2: //Fade from black
		progress -= progress_speed;
		image_alpha = dsin(progress*90);
		// Done when totally transparent
		if (progress <= 0) {
			global.animating = false; //Animations done
			instance_destroy();
		}
	break;
}
