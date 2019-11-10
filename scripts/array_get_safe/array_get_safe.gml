/// @function array_get_safe(array, index)

/// @param {arra} array
/// @param {int} index

/// @description Returns the value of an array at the given index. If the index
///				 is a valid index. Otherwise returns undefined.


//rename arguments for ease of use
var _array, _index;
_array = argument0;
_index = argument1;

//check if index is an int within range
if (array_valid_index(_array, _index)) {
	return _array[_index];
}

//return undefined
return undefined;
