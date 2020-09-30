onClick = function() {
	global.playerIsAi[0] = false;
	global.playerIsAi[1] = false;
	global.userName[0] = "Player 1";
	global.userName[1] = "Player 2";
	room_fadeto(rm_game);
};
