/// @function scr_array_for_each_copy(array, script, [script_arguments_array])
/// @param {array_id} array
/// @param {scripts} script_id
/// @param {array} script_arguments_array
/// @description Copies the array and performs the script on each element of 
///				 the copied array. Note - returns a new array. MUST be 
///				 assigned to be any use.


    var _array, _script_id, _script_arguments_array, _length, _new_array;
    _array = argument[0];
    _script_id = argument[1];
    _script_arguments_array = [];
    _length = array_length_1d(_array);
    
    if (argument_count == 3) {
        _script_arguments_array = argument[2];        
    } 
    
    _new_array = array_copy_shallow(_array);   
    for (var i = 0; i < _length; i++) {
        _new_array[i] = script_execute(_script_id, _array[i], _script_arguments_array);
    }

    return _new_array;   