///@desc Wait for the piece to land completely
alarm[0] = room_speed*0.5;

// Deactivate all players
with (obj_player_manager) {
	deactivate();
}
