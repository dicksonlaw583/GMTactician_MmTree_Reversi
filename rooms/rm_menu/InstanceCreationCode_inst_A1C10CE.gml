onClick = function() {
	global.userIsAi[0] = false;
	global.userIsAi[1] = false;
	global.userName[0] = "Player 1";
	global.userName[1] = "Player 2";
	room_fadeto(rm_game);
};
