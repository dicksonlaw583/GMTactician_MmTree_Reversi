///@func reversi_test_get_player()
function reversi_test_get_player() {
	var state;
	
	// Black to-play
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
	assert_equal(state.getCurrentPlayer(), +1, "Yellow to-play returned wrong player!");
	
	// White to-play
	state = new ReversiState([
		00, 00, 00, 00, 00, 00, 00, 00,
		00, 00, 00, 00, 00, 00, 00, 00,
		00, 00, 00, +1, 00, 00, 00, 00,
		00, 00, 00, +1, +1, 00, 00, 00,
		00, 00, 00, +1, -1, 00, 00, 00,
		00, 00, 00, 00, 00, 00, 00, 00,
		00, 00, 00, 00, 00, 00, 00, 00,
		00, 00, 00, 00, 00, 00, 00, 00
	], -1);
	assert_equal(state.getCurrentPlayer(), -1, "Red to-play returned wrong player!");
}
