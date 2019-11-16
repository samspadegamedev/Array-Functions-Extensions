/// @function scr_array_find_index(array, value)
/// @param {array_id} array
/// @param {variable} value
/// @description Returns the first index of the value specified, searching
///				 from left to right. Returns -1 if the value is not found.


//rename arguments for ease of use
var _array, _value, _length;
_array = argument0;
_value = argument1;
_length = array_length_1d(_array);

//search the array from left to right and return first index if found
for (var i = 0; i < _length; i++) {
	if (_array[i] == _value) {
		return i;
	}
}

//return -1 if value not found
return -1;