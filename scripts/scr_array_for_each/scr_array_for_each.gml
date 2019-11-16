/// @function array_for_each(array, script, ...script_arguments)
/// @param {array_id} array
/// @param {scripts} script_id
/// @param {script_arguments} arguments
/// @description Performs the script on each element of the array. It does return the array,
///				 however, it will add them to the array itself. 


var _array, _script_id, _script_arguments_array, _length;
_array = argument[0];
_script_id = argument[1];
_script_arguments_array = [];
_length = array_length_1d(_array);
    
if (argument_count == 3) {
    _script_arguments_array = argument[2];        
} 

for (var i = 0; i < _length; i++) {
    _array[@ i] = script_execute(_script_id, _array[i], _script_arguments_array);
}

return _array;