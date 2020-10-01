onClick = function() {
	global.userIsAi[0] = false;
	global.userIsAi[1] = true;
	global.userName[0] = "Player";
	global.userName[1] = "Computer";
	global.mmPlies = 2;
	room_fadeto(rm_game);
};
