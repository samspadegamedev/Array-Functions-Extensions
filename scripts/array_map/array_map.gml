/// @function array_for_each(array, script, ...script_arguments)
/// @param {array} array
/// @param {scripts} script_id
/// @param {array} arguments
/// @description

var _array, _script, _script_argument_array;
_array = argument0;
_script = argument1;
_script_argument_array = argument2;

var _new_array = array_copy_simple(_array);

for (var i = 0; i < array_length_1d(_array); i++) {
	script_execute(_script, _new_array, i, _script_argument_array);
}

return _new_array;