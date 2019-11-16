/// @function scr_array_swap_positions(array, position_1, position_2)
/// @param {array_id} array			
/// @param {int} position_1				
/// @param {int} position_2
/// @description Swaps two positions in an array. It does return the array; 
///				 however, it swaps them in position.


//rename arguments for ease of use
var _array, _position_1, _position_2;
_array = argument0;
_position_1 = argument1;
_position_2 = argument2;

//swap elements
var _temp = _array[_position_1];
_array[@ _position_1] = _array[_position_2];
_array[@ _position_2] = _temp;

//return array
return _array;




