/// @function array_filter(array, filter_script)

/// @param {array} array
/// @param {script} filter_script

/// @description Creates and returns a new array that only has the values
///				 from the prior array that meet the requirement of the filter script.


//rename arguments for ease of use
var _array, _script;
_array = argument0;
_script = argument1;

//create an new empty array and add only the values that 
//meet the filter_script test
var _new_array = [];
var _counter = 0;
for (var i = 0; i < array_length_1d(_array); i += 1) {
	if (script_execute(_script, _array[i])) {
		_new_array[_counter++] = _array[i];
	}
}

//return the new array
return _new_array;