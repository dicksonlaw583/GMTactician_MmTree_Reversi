///@func reversi_test_is_legal()
function reversi_test_is_legal() {
	var state;
	
	// Test variety of moves on opening state
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
	assert_fail(state.isLegal(-1), "Invalid negative move passed!");
	assert_fail(state.isLegal(64), "Invalid big move passed!");
	assert_fail(state.isLegal(35), "Invalid plugged move passed!");
	assert_fail(state.isLegal(42), "Invalid flipless move passed!");
	assert(state.isLegal(19), "Move 19 failed!");
	assert(state.isLegal(26), "Move 26 failed!");
	assert(state.isLegal(37), "Move 37 failed!");
	assert(state.isLegal(44), "Move 44 failed!");
}
