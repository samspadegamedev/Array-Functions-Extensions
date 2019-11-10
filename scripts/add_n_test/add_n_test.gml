/// @function add_n_test(value, script_arguments_array)

/// @param {variable} value
/// @param {array} script_arguments_array

/// @description adds n to the value

//rename the arguments for ease of use
var _value, _scrit_arguments_array;
_value = argument0;
_scrit_arguments_array = argument1;

_value += _scrit_arguments_array[0];

return _value;