/// @function array_find_index_all(array, value)

/// @param {array} array
/// @param {variable} value

/// @description Returns an array of all indexs containing the value specified, searching
///				 from left to right. Returns an empty array if the value is not found.



//rename arguments for ease of use
var _array, _script_id, _script_arguments_array, _length;
_array = argument[0];
_script_id = argument[1];
_script_arguments_array = [];
_length = array_length_1d(_array);

if (argument_count == 3) {
    _script_arguments_array = argument[2];        
} 


//search the array from left to right and return first index if found
var _new_array, _counter;
_new_array = [];
_counter = 0;
for (var i = 0; i < _length; i++) {
	if (script_execute(_script_id, _array[i], _script_arguments_array)) {
		_new_array[_counter++] = i;
	}
}

//return array of indexs found (empty if none)
return _new_array;