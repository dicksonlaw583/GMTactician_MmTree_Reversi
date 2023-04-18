///@desc Wait for a click anywhere on the board to reset
if (mouse_check_button_released(mb_left) && alarm[0] < 0 && !is_undefined(obj_board_manager.xyToMove(mouse_x, mouse_y))) {
	// Reset pieces
	obj_board_manager.clear();
	// Reset players
	with (obj_player_manager) {
		deactivate();
	}
	// Wait a little before restarting
	alarm[0] = game_get_speed(gamespeed_fps);
}
