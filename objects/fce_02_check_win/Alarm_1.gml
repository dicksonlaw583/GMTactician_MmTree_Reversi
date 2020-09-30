///@desc Check win
// Update scores
with (obj_player_manager) {
	points = global.state.getScore(player);
}
// No win: Pass it back to either player
if (!global.state.isFinal()) {
	instance_change(global.playerIsAi[(global.playingAs[0] == global.state.player) ? 0 : 1] ? fce_01b_ai_move : fce_01a_player_move, true);
}
// Win: Notify and go to waiting state
else {
	var playoutResult = global.state.getPlayoutResult();
	// Set outcome
	with (obj_player_manager) {
		setOutcome(playoutResult);
	}
	// Play appropriate sound
	if (playoutResult != 0) {
		if (global.playerIsAi[(global.playingAs[0] == sign(playoutResult)) ? 0 : 1]) {
			audio_play_sound(snd_lose, 1, false);
		} else {
			audio_play_sound(snd_win, 1, false);
		}
	}
	// Next step, go to waiting state
	instance_change(fce_03_game_over, true);
}
