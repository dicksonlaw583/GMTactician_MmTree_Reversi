///@desc Activate player
with (obj_player_manager) {
	points = 2;
}
instance_change(global.playerIsAi[(global.playingAs[0] == +1) ? 0 : 1] ? fce_01b_ai_move : fce_01a_player_move, true);