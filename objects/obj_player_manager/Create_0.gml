///@desc Setup
statusText = "";
image_speed = 0;
daemon = noone;
active = false;
points = 0;

// Activate this player
activateYourTurn = function() {
	statusText = "Your Move";
	active = true;
};

// Activate this player as thinking
activateThinking = function(_mctsDaemon) {
	statusText = "Thinking...";
	daemon = _mctsDaemon;
	active = true;
};

// Deactivate this player
deactivate = function() {
	statusText = "";
	active = false;
	daemon = noone;
};

// Set outcome
setOutcome = function(playoutResult) {
	var relativeOutcome = sign(player*playoutResult);
	switch (relativeOutcome) {
		case 1: statusText = "WIN"; break;
		case -1: statusText = "LOSE"; break;
		default: statusText = "DRAW";
	}
};
