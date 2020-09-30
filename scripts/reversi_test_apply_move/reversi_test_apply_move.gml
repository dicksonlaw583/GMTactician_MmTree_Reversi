///@func reversi_test_apply_move()
function reversi_test_apply_move() {
	var state, move, expectedState;
	
	// Black to play
	state = new ReversiState([
		00, 00, 00, 00, 00, 00, 00, 00,
		00, 00, 00, 00, 00, 00, 00, 00,
		00, 00, 00, 00, 00, 00, 00, 00,
		00, 00, 00, -1, +1, 00, 00, 00,
		00, 00, 00, +1, -1, 00, 00, 00,
		00, 00, 00, 00, 00, 00, 00, 00,
		00, 00, 00, 00, 00, 00, 00, 00,
		00, 00, 00, 00, 00, 00, 00, 00
	], +1);
	move = 26;
	expectedState = new ReversiState([
		00, 00, 00, 00, 00, 00, 00, 00,
		00, 00, 00, 00, 00, 00, 00, 00,
		00, 00, 00, 00, 00, 00, 00, 00,
		00, 00, +1, +1, +1, 00, 00, 00,
		00, 00, 00, +1, -1, 00, 00, 00,
		00, 00, 00, 00, 00, 00, 00, 00,
		00, 00, 00, 00, 00, 00, 00, 00,
		00, 00, 00, 00, 00, 00, 00, 00
	], -1);
	state.applyMove(move);
	assert_equal(state, expectedState, "Black move ended in wrong state!");
}
