/// @function array_get_safe(array, index, value)

/// @param {arra} array
/// @param {int} index
/// @param {variable} value

/// @description Sets the value of an array at the given index. If the index
///				 is a valid index. Returns the array regardless of whether the
///				 value was updated or not.


//rename arguments for ease of use
var _array, _index, _value;
_array = argument0;
_index = argument1;
_value = argument2;

//check if index is an int within range
if (array_valid_index(_array, _index)) {
	_array[@ _index] = _value;
}

//returns the array
return _array;
