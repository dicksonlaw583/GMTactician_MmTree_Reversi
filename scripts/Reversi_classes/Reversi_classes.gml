///@func ReversiState(board, player)
///@param {Piece[64]} board
///@param {Player} player
///@desc A Connect-4 game state for GMTactician
function ReversiState(_board, _player) constructor {
	board = _board;
	player = _player;
	
	#region GMTactician required methods
	///@func readMemo(memo)
	///@param {Memo} memo
	///@desc Restore the state to the given memo. 
	static readMemo = function(memo) {
		array_copy(board, 0, memo, 0, 64);
		player = memo[64];
	};
	
	///@func getMemo()
	///@desc Return a memo from the current state.
	static getMemo = function() {
		var memo = array_create(65);
		array_copy(memo, 0, board, 0, 64);
		memo[64] = player;
		return memo;
	};
	
	///@func clone()
	///@desc Return an exact copy of the current state.
	static clone = function() {
		var _board = array_create(64);
		array_copy(_board, 0, board, 0, 64);
		return new ReversiState(_board, player);
	};
	
	///@func isFinal()
	///@desc Return whether the current state represents a finished game.
	static isFinal = function() {
		// For each square
		for (var i = 63; i >= 0; --i) {
			// Don't count non-empty squares
			if (board[i] != 0) continue;
			// For each direction except center
			for (var dx = -1; dx <= 1; ++dx) {
				for (var dy = -1; dy <= 1; ++dy) {
					if (dx == 0 && dy == 0) continue;
					// If there is a valid run in that direction for either side, it's not over
					if (_probe(i, dx, dy, player) || _probe(i, dx, dy, -player)) {
						return false;
					}
				}
			}
		}
		// Still no plays, must be final
		return true;
	};
	
	///@func getMoves()
	///@desc Return an array of moves possible from the current state. Assumes that the game is not already over.
	static getMoves = function() {
		var moves = [];
		var movesN = 0;
		// For each square on the board
		for (var i = 0; i < 64; ++i) {
			// Add as move if is empty square and legal
			if (board[i] == 0 && isLegal(i)) {
				moves[movesN++] = i;
			}
		}
		// Add pass if no moves
		if (movesN == 0) {
			moves[0] = -1;
		}
		return moves;
	};
	
	///@func getCurrentPlayer()
	///@desc Return who is the current player.
	static getCurrentPlayer = function() {
		return player;
	};
	
	///@func isLegal(move)
	///@param {Move} move
	///@desc Return whether the given move is legal for the current state.
	static isLegal = function(move) {
		// Handle passes as special case; only valid if it is the only move
		if (move < 0) {
			var availableMoves = getMoves();
			return array_length(availableMoves) == 1 && getMoves[0] < 0;
		}
		// Make plays on empty on-board squares only
		if (move >= 64 || board[move] != 0) return false;
		// For each direction leading out of that square
		for (var dx = -1; dx <= 1; ++dx) {
			for (var dy = -1; dy <= 1; ++dy) {
			// Return true if there is a run in that direction
			if (_probe(move, dx, dy, player) > 0) return true;
			}
		}
		// No evidence that the move is legal must be illegal
		return false;
	};
	
	///@func applyMove(move)
	///@param {Move} move
	///@desc Make the specified move on the current state.
	static applyMove = function(move) {
		// -1 is a pass; others are placements
		if (move >= 0) {
			// For each direction
			for (var dx = -1; dx <= 1; ++dx) {
				for (var dy = -1; dy <= 1; ++dy) {
					// If there is a flip run in that direction:
					var runLength = _probe(move, dx, dy, player);
					if (runLength) {
						// Set the whole run to the player's colour
						var delta = dy*8+dx;
						for (var i = runLength; i >= 1; --i) {
							board[move+i*delta] = player;
						}
					}
				}
			}
			// Set the piece down
			board[move] = player;
		}
		// Change the player
		player = -player;
	};
	
	///@func getPlayoutResult()
	///@desc Return a playout result describing the current state.
	static getPlayoutResult = function() {
		var boardSum = 0;
		for (var i = 63; i >= 0; --i) {
			boardSum += board[i];
		}
		return boardSum;
	};
	#endregion
	
	#region Utilities
	///@func _probe(pos, dx, dy, player)
	///@param {0-63} pos Board position to probe from
	///@param {-1|0|1} dx X direction to probe in
	///@param {-1|0|1} dy Y direction to probe in
	///@param {Player} player The player to probe as
	///@desc Return the length of the run of flips in the given direction if the player plays there. If no run, return 0.
	static _probe = function(pos, dx, dy, p) {
		// Square not empty, no run
		if (board[pos] != 0) return 0;
		// Calculate maximum length of run
		var max_run = 0;
		var sx = pos mod 8;
		var sy = pos div 8;
		// Stationary dx-dy: No run
		if (dx == 0 && dy == 0) return 0;
		// Determine maximum run based on distance
		if (dx != 0 ^^ dy != 0) {
			if (dx != 0) {
				max_run = max(-dx*sx, dx*(7-sx));
			} else {
				max_run = max(-dy*sy, dy*(7-sy));
			}
		} else {
			max_run = min(max(-dx*sx, dx*(7-sx)), max(-dy*sy, dy*(7-sy)));
		}
		// No possible run if the direction meets the border right away
		if (max_run <= 1) return 0;
		// For each square in that direction
		var delta = dy*8+dx;
		for (var i = 1; i <= max_run; i++) {
			pos += delta;
			// If reverting to blank, no run
			if (board[pos] == 0) return 0;
			// If reverting to player's colour, return length of run right away
			if (board[pos] == p) return i-1;
		}
		// If it is still the non-playing colour after loop is over, no run
		return 0;
	};
	
	///@func getScore(player)
	///@param {Player} player
	///@desc Return the score for the given player
	static getScore = function(p) {
		var _score = 0;
		for (var i = 63; i >= 0; --i) {
			if (board[i] == p) {
				++_score;
			}
		}
		return _score;
	};
	#endregion
}
