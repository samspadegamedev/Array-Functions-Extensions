/// @function array_for_each_copy(array, script, ...script_arguments)

/// @param {array} array
/// @param {scripts} script_id
/// @param {array} arguments

/// @description Copies the array and performs the script on each element of 
///				 the copied array. Note - returns a new array. MUST be 
///				 assigned to be any use.


//rename arguments for ease of use
var _array, _script, _script_argument_array;
_array = argument0;
_script = argument1;
_script_argument_array = argument2;

//make a shallow copy
var _new_array = array_copy_shallow(_array);

//loop through new array and execute the script on each element
for (var i = 0; i < array_length_1d(_array); i++) {
	_new_array[i] = script_execute(_script, _array[i], _script_argument_array);
}

//return new array
return _new_array;