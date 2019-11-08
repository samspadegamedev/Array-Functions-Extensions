/// @function array_concat(...arrays)
/// @Param {array} ...arrays
/// @description 

var _new_array, _counter, _current_array;
_new_array = [];
_counter = 0;
for (var i = 0; i < argument_count; i++) {
	_current_array = argument[i];
	for (var j = 0; j < array_length_1d(_current_array); j++) {
		_new_array[_counter++] = _current_array[j];
	}
}

return _new_array;