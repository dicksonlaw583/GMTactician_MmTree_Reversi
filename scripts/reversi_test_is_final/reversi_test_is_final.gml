///@desc reversi_test_is_final()
function reversi_test_is_final() {
	var state;
	
	// Starting board must not be final
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
	assert_fail(state.isFinal(), "Starting board is final!");
	
	// Filled board must be final
	state = new ReversiState([
		+1, +1, +1, +1, +1, +1, +1, +1,
		-1, -1, -1, -1, -1, -1, -1, -1,
		+1, +1, +1, +1, +1, +1, +1, +1,
		-1, -1, -1, -1, -1, -1, -1, -1,
		+1, +1, +1, +1, +1, +1, +1, +1,
		-1, -1, -1, -1, -1, -1, -1, -1,
		+1, +1, +1, +1, +1, +1, +1, +1,
		-1, -1, -1, -1, -1, -1, -1, -1
	], +1);
	assert(state.isFinal(), "Filled board isn't final!");
	
	// Moveless board must be final
	state = new ReversiState([
		+1, +1, +1, +1, +1, +1, +1, 00,
		00, 00, 00, 00, 00, 00, 00, +1,
		-1, -1, -1, -1, -1, -1, 00, +1,
		-1, -1, -1, -1, -1, -1, 00, +1,
		-1, -1, -1, -1, -1, -1, 00, +1,
		-1, -1, -1, -1, -1, -1, 00, +1,
		-1, -1, -1, -1, -1, -1, 00, +1,
		-1, -1, -1, -1, -1, -1, 00, +1,
	], -1);
	assert(state.isFinal(), "Moveless board isn't final!");
}
