/// @function array_swap_positions(array, pos_1, pos_2)

/// @param {array} array			
/// @param {int} pos_1				
/// @param {int} pos_2

/// @description Swaps two positions in an array. It does return the array,
///				 however, it will swap them in position. Note: this function
///				 will error out if you try to reference a position outside of
///				 the array.


//rename arguments for ease of use
var _array, _pos_1, _pos_2;
_array = argument0;
_pos_1 = argument1;
_pos_2 = argument2;

//swap elements
var _temp = _array[_pos_1];
_array[@ _pos_1] = _array[_pos_2];
_array[@ _pos_2] = _temp;

//return array
return _array;




