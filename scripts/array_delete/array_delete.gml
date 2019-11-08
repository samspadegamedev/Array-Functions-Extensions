/// @function array_delete(id, position)
/// @param {array} id
/// @param {int} position
/// @description Deletes the value at the given position.
///				 Functions the same as ds_list_delete.

var _array, _position, _length, _new_array;
_array = argument0;
_position = argument1;
_length = array_length_1d(_array);
_new_array = array_create(_length - 1);
for (var i = 0; i < _length - 1; i++) {
	if (i < _position) {
		_new_array[i] = _array[i];
	} else {
		_new_array[i]= _array[i + 1];
	}
}

_array = _new_array;
return _array;