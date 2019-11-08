/// @function array_sort(array, script)
/// @param {array} array
/// @param {script} script
/// @description


var _array, _script, no_change;
_array = argument0;
_script = argument1;

for (var i = array_length_1d(_array); i > 0; i -= 1) {
	no_change = true;
	for (var j = 0; j < i - 1; j+= 1) {
		if (script_execute(_script, _array[j], _array[j + 1])) {
			array_swap(_array, j, j + 1);
			no_change = false;
		}
	
	}
	if (no_change) break;
}

return _array;




