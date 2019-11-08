/// @function array_delete(id, position, amount)
/// @param {array} id
/// @param {int} position
/// @param {int} amount
/// @description Deletes the value at the given position.
///				 Functions the same as ds_list_delete.

var _array, _position, _amount, _length, _new_array;
_array = argument0;
_position = argument1;
_amount = argument2;
_length = array_length_1d(_array);
_new_array = array_create(_length - _amount);
for (var i = 0; i < _length - _amount; i++) {
	if (i < _position) {
		_new_array[i] = _array[i];
	} else {
		_new_array[i]= _array[i + _amount];
	}
}

return _array;