///@desc Wait for a move from the Minimax daemon
if (daemon != noone && daemon.ready) {
	// Get and make the move
	var move = tree.getBestMove();
	global.state.applyMove(move);
	obj_board_manager.insertPiece(move, currentPlayer);
	// Clean the tree
	delete tree;
	instance_destroy(daemon);
	// Next step
	instance_change(fce_02_check_win, true);
}
