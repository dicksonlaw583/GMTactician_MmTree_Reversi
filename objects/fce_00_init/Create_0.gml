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

// Choose one side to play as black
global.playingAs = choose([+1, -1], [-1, +1]);

// Update visuals
obj_board_manager.sync(global.state);
with (obj_player_manager) {
	player = global.playingAs[user];
	points = 2;
}

// Wait 0.5 second before changing
alarm[0] = 0.5*room_speed;
