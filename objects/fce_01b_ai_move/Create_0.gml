///@desc Start a tree
tree = undefined;
daemon = noone;
currentPlayer = global.state.player;

// If there is only one move, make it automatically
var moves = global.state.getMoves();
if (array_length(moves) == 1) {
	// Make that only move
	global.state.applyMove(moves[0]);
	obj_board_manager.insertPiece(moves[0], currentPlayer);
	// Next step
	instance_change(fce_02_check_win, true);
}

// Set AI turn
else {
	tree = new ReversiMmTree(global.state, global.mmPlies);
	daemon = tree.evaluateInBackground();
	with (obj_player_manager) if (player == global.state.player) {
		activateThinking(other.daemon);
		break;
	}
}
