/// @function array_find_index_all(array, value)

/// @param {array} array
/// @param {variable} value

/// @description Returns an array of all indexs containing the value specified, searching
///				 from left to right. Returns an empty array if the value is not found.


//rename arguments for ease of use
var _array, _value, _length;
_array = argument0;
_value = argument1;
_length = array_length_1d(_array);

//search the array from left to right and return first index if found
var _new_array, _counter;
_new_array = [];
_counter = 0;
for (var i = 0; i < _length; i++) {
	if (_array[i] == _value) {
		_new_array[_counter++] = i;
	}
}

//return array of indexs found (empty if none)
return _new_array;