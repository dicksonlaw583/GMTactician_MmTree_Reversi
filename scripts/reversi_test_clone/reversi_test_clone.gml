///@desc reversi_test_clone()
function reversi_test_clone() {
	var state, fixture;
	
	// Clone
	fixture = new ReversiState([
		+1, -1, +1, -1, +1, -1, +1, -1,
		00, 00, +1, +1, 00, -1, -1, 00,
		+1, -1, +1, -1, +1, -1, +1, -1,
		+1, -1, +1, -1, +1, -1, +1, -1,
		+1, -1, +1, -1, +1, -1, +1, -1,
		+1, -1, +1, -1, +1, -1, +1, -1,
		00, 00, -1, +1, 00, -1, +1, 00,
		+1, -1, +1, -1, +1, -1, +1, -1
	], -1);
	state = fixture.clone();
	assert_equal(state, fixture, "Clone failed!");
	state.board[8] = +1;
	state.player = +1;
	assert_not_equal(state, fixture, "Clone is not independent!");
}
