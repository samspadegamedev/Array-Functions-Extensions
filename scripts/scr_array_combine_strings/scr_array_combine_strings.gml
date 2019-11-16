/// @function array_combine_strings(arrays, [seperator])
/// @param {array} array
/// @param {string} seperator
/// @description Takes an array of strings and returns one string seperated by the option string of choice

//rename arguments for ease of use
var _array, _length, _seperator, _new_string;
_array = argument[0];
_length = array_length_1d(_array);
_seperator = "";
_new_string = "";

if (argument_count == 2) {
	_seperator = argument[1];
}

//for each array, loop through it and add to the new array
for (var i = 0; i < _length; i++) {
	if (i == 0) {
		_new_string += _array[i];
	} else {
		_new_string += _seperator + _array[i];
	}
}

//return new array
return _new_string;