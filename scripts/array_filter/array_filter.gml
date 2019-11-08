/// @function array_filter(array, script)
/// @param {array} array
/// @param {script} test
/// @description

var _array, _script;
_array = argument0;
_script = argument1;

var _new_array = [];
var _counter = 0;
for (var i = 0; i < array_length_1d(_array); i += 1) {
	if (script_execute(_script, _array[i])) {
		_new_array[_counter++] = _array[i];
	}
}
return _new_array;