/// @function scr_array_shuffle(array)

/// @param {array} array

/// @description Randomizes the order of an array. It does return the array,
///				 however, it will add them to the array itself. 


//rename the arguments for ease of use
var _array, _length;
_array = argument0;
_length = array_length_1d(_array);

//shuffle the contents of the array
repeat (_length)
{
	array_swap_positions(_array, irandom(_length - 1), irandom(_length - 1));
}

//return the original array
return _array;
