///@func room_fadeto(room)
///@param {Room} room The room to fade to
///@desc Go to the target room with a fade effect
function room_fadeto(rm) {
	with (instance_create_depth(0, 0, 0, __obj_room_fadeto__)) {
		_room = rm;
	}
}
