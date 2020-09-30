///@func reversi_test_final_get_playout_result()
function reversi_test_final_get_playout_result() {
	var state, expected, got;
	
	// Opening state
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
	expected = 0;
	got = state.getPlayoutResult();
	assert_equal(got, expected, "Opening state!");
	assert_fail(state.isFinal(), "Opening state is final!");
}
