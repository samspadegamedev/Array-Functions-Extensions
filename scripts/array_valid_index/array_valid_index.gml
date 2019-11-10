/// @function array_valid_index(array, index)

/// @param {arra} array
/// @param {int} index

/// @description Returns true if the index is a valid index for the array.
///				 Otherwise returns false. 


//rename arguments for ease of use
var _array, _index;
_array = argument0;
_index = argument1;

//check if index is an int within range
if (is_real(_index)) {
	if (_index == floor(_index)) {
		if (_index >= 0) && (_index < array_length_1d(_array)) {
			return true;
		}
	}
}

//return false
return false;
