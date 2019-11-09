/// @function array_combine(...arrays)

/// @Param {array} ...arrays

/// @description Combines multiple arrays into one, and returns the new array.
///				 Note - returns a new array. MUST be assigned to be any use.


//rename arguments for ease of use
var _new_array, _counter, _current_array;
_new_array = [];
_counter = 0;

//for each array, loop through it and add to the new array
for (var i = 0; i < argument_count; i++) {
	_current_array = argument[i];
	for (var j = 0; j < array_length_1d(_current_array); j++) {
		_new_array[_counter++] = _current_array[j];
	}
}

//return new array
return _new_array;