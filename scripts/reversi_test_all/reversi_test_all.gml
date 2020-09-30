///@func reversi_test_all()
function reversi_test_all() {
	var timeA = current_time;
	
	/* v Tests here v */
	reversi_test_read_memo();
	reversi_test_get_memo();
	reversi_test_clone();
	reversi_test_get_player();
	reversi_test_get_playout_result();
	reversi_test_is_legal();
	reversi_test_get_moves();
	reversi_test_apply_move();
	reversi_test_is_final();
	/* ^ Tests here ^ */
	
	var timeB = current_time;
	show_debug_message("Reversi tests completed in " + string(timeB-timeA) + "ms.");
}
