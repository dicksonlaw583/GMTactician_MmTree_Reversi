///@desc Set player's turn
currentPlayer = global.state.player;
if (global.state.getMoves()[0] == -1) {
	global.state.applyMove(-1);
	instance_change(fce_02_check_win, true);
} else {
	with (obj_player_manager) {
		if (player == global.state.player) {
			activateYourTurn();
			break;
		}
	}
}
