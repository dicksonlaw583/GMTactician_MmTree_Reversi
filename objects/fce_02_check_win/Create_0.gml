///@desc Wait for the piece to land completely
alarm[0] = game_get_speed(gamespeed_fps)*0.5;

// Deactivate all players
with (obj_player_manager) {
	deactivate();
}
