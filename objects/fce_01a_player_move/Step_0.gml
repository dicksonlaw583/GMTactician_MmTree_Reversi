///@desc Check for player's clicks
if (mouse_check_button_released(mb_left)) {
	// Check the move
	var clickMove = obj_board_manager.xyToMove(mouse_x, mouse_y);
	if (global.state.isLegal(clickMove)) {
		// Apply the move
		global.state.applyMove(clickMove);
		obj_board_manager.insertPiece(clickMove, currentPlayer);
		// Next step
		instance_change(fce_02_check_win, true);
	}
}
