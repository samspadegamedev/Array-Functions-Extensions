/// @function array_swap(array, pos_1, pos_2)
/// @param {array} array
/// @param (int} pos_1
/// @param (int} pos_2
/// @description


var _array, _pos_1, _pos_2;
_array = argument0;
_pos_1 = argument1;
_pos_1 = argument2;

var _temp = _array[_pos_1];
_array[@ _pos_1] = _array[_pos_1];
_array[@ _pos_2] = _temp;