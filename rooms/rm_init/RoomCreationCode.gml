// Seed the PRNG
randomize();

// Self-test
reversi_test_all();

//! GC crash workaround: Running a 4-depth tree first prevents 3-depth tree from crashing
var state = new ReversiState([
	00, 00, 00, 00, 00, 00, 00, 00,
	00, 00, 00, 00, 00, 00, 00, 00,
	00, 00, 00, 00, 00, 00, 00, 00,
	00, 00, 00, +1, -1, 00, 00, 00,
	00, 00, 00, -1, +1, 00, 00, 00,
	00, 00, 00, 00, 00, 00, 00, 00,
	00, 00, 00, 00, 00, 00, 00, 00,
	00, 00, 00, 00, 00, 00, 00, 00
], +1)
var tree = new ReversiMmTree(state, 4);
tree.evaluate();
delete state;
delete tree;

// Set up background decor
var times = irandom_range(15, 20);
repeat (times) {
	instance_create_layer(irandom(room_width), irandom(room_height), "BackInstances", obj_background_symbol);
}

// Global variables
ini_open(working_directory + "settings.ini");
global.mmPlies = ini_read_real("config", "plies", 2);
ini_close();
global.playerIsAi = [false, true];
global.userName = ["Player 1", "Player 2"];

// Boot up
room_fadeto(rm_menu);
