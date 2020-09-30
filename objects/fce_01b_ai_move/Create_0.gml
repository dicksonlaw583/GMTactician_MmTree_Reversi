///@desc Start a tree
tree = new ReversiMmTree(global.state, global.mmPlies);
daemon = tree.evaluateInBackground();
currentPlayer = global.state.player;

// Set AI turn
with (obj_player_manager) {
	if (player == global.state.player) {
		activateThinking(other.daemon);
		break;
	}
}
