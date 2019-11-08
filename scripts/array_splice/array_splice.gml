/// @function array_splice(array, pos, delete_amount, ...values)
/// @param
/// @description

var _array, _pos, _amount, _new_length, _new_array;

_pos = argument[1];

var _new_array = array_copy_simple(argument[0]);

_new_array = array_delete(_new_array, argument[1], argument[2]);



_array = _new_array;
_amount = argument_count - 3;
_new_length = array_length_1d(_array) + _amount;
_new_array = array_create(_new_length);

for (var i = 0; i < _new_length; i++) {
	if (i < _pos) {
		_new_array[i] = _array[i];
	} else if (i >= _pos + _amount) {
		_new_array[i] = _array[i - _amount];
	} else {
		var _val = i - _pos + 3;
		_new_array[i] = argument[_val];
	}
}


return _new_array;
