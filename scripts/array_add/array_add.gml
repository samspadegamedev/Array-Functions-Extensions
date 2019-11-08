/// @function array_add(array, ...)

/// @param {array} array			the array to add to
/// @param {variables} ...			the variables to add

/// @description Add a variable amount of variables to the end of an Array


var _array = argument[0];
for (var i = 1; i < argument_count; i += 1) {
	_array[@ array_length_1d(_array)] = argument[i];
}
return _array;
