/// @function scr_array_reverse(array)
/// @param {array} array
/// @description Returns the array in reverse order.

var _position_1, _position_2, _position_3;
_position_1 = 0;
_position_2 = array_length_1d(argument0);
while (_position_1 < --_position_2) {
	_position_3 = argument0[_position_1];
	argument0[_position_1++] = argument0[_position_2];
	argument0[_position_2] = _position_3;
}

return argument0;