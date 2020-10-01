///@desc Accept user or AI input
instance_change(global.userIsAi[(global.playingAs[0] == +1) ? 0 : 1] ? fce_01b_ai_move : fce_01a_player_move, true);
