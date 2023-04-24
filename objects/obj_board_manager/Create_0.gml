///@desc Setup

// Game state
boardInsts = array_create(64, noone);

///@func insertPiece(_pos, _player)
///@param {Real} _pos The position to insert at (0-63)
///@param {Real} _player The player to play as (-1, 1)
///@return {Id.Instance,Undefined}
///@self obj_board_manager
///@desc Insert the given player's piece at the given position.
///Return the instance ID if successful, or undefined if passing or unsuccessful.
insertPiece = function(_pos, _player) {
	if (_pos >= 0) {
		var posX = _pos mod 8;
		var posY = _pos div 8;
		audio_play_sound(snd_place, 1, false);
		with (instance_create_layer(x+cellWidth*posX, y+cellHeight*posY, layer, obj_piece)) {
			cx = posX;
			cy = posY;
			setPlayer(_player);
			other.boardInsts[_pos] = id;
			return id;
		}
	} else {
		audio_play_sound(snd_pass, 1, false);
	}
};

///@func clear()
///@self obj_board_manager
///@desc Clear this board.
clear = function() {
	for (var i = 0; i < 64; ++i) {
		if (instance_exists(boardInsts[i])) {
			boardInsts[i].fadeOut();
		}
		boardInsts[i] = noone;
	}
};

///@func sync()
///@self obj_board_manager
///@desc Sync board to state.
sync = function(s) {
	var board = s.board;
	for (var i = 63; i >= 0; --i) {
		if (boardInsts[i] == noone) {
			if (board[i] != 0) {
				boardInsts[i] = insertPiece(i, board[i]);
			}
		} else {
			if (board[i] == 0) {
				boardInsts[i].fadeOut()
				boardInsts[i] = noone;
			} else if (board[i] != boardInsts[i].player) {
				boardInsts[i].flip();
			}
		}
	}
};

///@func xyToMove(xx, yy)
///@self obj_board_manager
///@param {Real} xx X position to convert
///@param {Real} yy Y position to convert
///@return {Real,Undefined}
///@desc Convert in-room position (x, y) to cell position (0-63).
///If out-of-bounds, return undefined.
xyToMove = function(xx, yy) {
	var cy = round((yy-y)/cellHeight);
	if (cy >= 0 && cy <= 7) {
		var cx = round((xx-x)/cellWidth);
		if (cx >= 0 && cx <= 7) {
			return cx+8*cy;
		}
	}
	return undefined;
};
