///@func reversi_test_get_moves()
function reversi_test_get_moves() {
	var state, expectedMoves, gotMoves;
	
	// 4 moves for opening board
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
	expectedMoves = [19, 26, 37, 44];
	gotMoves = state.getMoves();
	assert_equal(gotMoves, expectedMoves, "Wrong moves for opening board!");
}
