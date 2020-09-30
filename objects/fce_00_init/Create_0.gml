///@desc Set up the main state
global.state = new ReversiState([
	00, 00, 00, 00, 00, 00, 00, 00,
	00, 00, 00, 00, 00, 00, 00, 00,
	00, 00, 00, 00, 00, 00, 00, 00,
	00, 00, 00, +1, -1, 00, 00, 00,
	00, 00, 00, -1, +1, 00, 00, 00,
	00, 00, 00, 00, 00, 00, 00, 00,
	00, 00, 00, 00, 00, 00, 00, 00,
	00, 00, 00, 00, 00, 00, 00, 00,
], +1);

// Choose black
global.playingAs = choose([+1, -1], [-1, +1]);
with (obj_player_manager) {
	player = global.playingAs[user];
}

// Update visuals
obj_board_manager.sync(global.state);
with (obj_player_manager) {
	points = 0;
}

// Wait 0.5 second before changing
alarm[0] = 0.5*room_speed;
