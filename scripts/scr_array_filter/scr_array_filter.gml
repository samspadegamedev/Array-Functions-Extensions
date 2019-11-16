/// @function scr_array_filter(array, script, [script_arguments_array])
/// @param {array_id} array
/// @param {script_id} filter_script
/// @param {array} script_arguments_array
/// @description Creates and returns a new array that only has the values
///				 from the prior array that meet the requirement of the filter script.


//rename arguments for ease of use
var _array, _script_id, _script_arguments_array, _length;
_array = argument[0];
_script_id = argument[1];
_script_arguments_array = [];
_length = array_length_1d(_array);

if (argument_count == 3) {
    _script_arguments_array = argument[2];        
} 

//create an new empty array and add only the values that 
//meet the filter_script test
var _new_array = [];
var _counter = 0;
for (var i = 0; i < array_length_1d(_array); i += 1) {
	if (script_execute(_script_id, _array[i], _script_arguments_array)) {
		_new_array[_counter++] = _array[i];
	}
}

//return the new array
return _new_array;