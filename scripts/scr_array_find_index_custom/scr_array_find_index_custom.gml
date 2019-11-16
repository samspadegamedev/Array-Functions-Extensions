/// @function scr_array_find_index_custom(array, script, [...script_arguments_array])

/// @param {array} array
/// @param {script_id} script
/// @param {array} script_arguments_array

/// @description Returns the first index of the value specified, searching
///				 from left to right. Returns -1 if the value is not found.


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
for (var i = 0; i < _length; i++) {
	if (script_execute(_script_id, _array[i], _script_arguments_array)) {
		return i;
	}
}

return -1;

