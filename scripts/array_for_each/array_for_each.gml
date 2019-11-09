/// @function array_for_each(array, script, ...script_arguments)

/// @param {array} array
/// @param {scripts} script_id
/// @param {array} arguments

/// @description Performs the script on each element of the array. It does return the array,
///				 however, it will add them to the array itself. 


//rename arguments for ease of use
var _array, _script, _script_argument_array;
_array = argument0;
_script = argument1;
_script_argument_array = argument2;

//loop through array and execute the script on each element
for (var i = 0; i < array_length_1d(_array); i++) {
	script_execute(_script, _array, i, _script_argument_array);
}

//return original array
return _array;