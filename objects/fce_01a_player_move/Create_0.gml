///@desc Set player's turn
currentPlayer = global.state.player;

// When the only move is to pass, do this and check win
if (global.state.getMoves()[0] < 0) {
	global.state.applyMove(-1);
	obj_board_manager.insertPiece(-1, currentPlayer);
	instance_change(fce_02_check_win, true);
}
// Otherwise, activate the correct player and wait for input
else {
	with (obj_player_manager) {
		if (player == global.state.player) {
			activateYourTurn();
			break;
		}
	}
}
