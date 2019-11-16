/// @function scr_array_reduce(array)
/// @param {array_id} array
/// @description Returns the total value of all numbers in an array. Note - this script
///				 will cause an error if the array contains anything except numbers.


//rename arguments for ease of use
var _array, _script_id, _script_arguments_array, _length, _accumulator;
_array = argument[0];
_script_id = argument[1];
_script_arguments_array = [];
_length = array_length_1d(_array);

if (argument_count == 3) {
    _script_arguments_array = argument[2];        
} 

_accumulator = 0;
for (var i = 0; i < _length; i++) {
	_accumulator += script_execute(_script_id, _array[i], _script_arguments_array);
}

//return total
return _accumulator;