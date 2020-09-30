onClick = function() {
	global.playerIsAi[0] = false;
	global.playerIsAi[1] = true;
	global.userName[0] = "Player";
	global.userName[1] = "Computer";
	global.mmPlies = 3;
	room_fadeto(rm_game);
};
