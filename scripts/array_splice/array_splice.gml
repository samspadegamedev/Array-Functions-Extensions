/// @function array_splice(array, pos, delete_amount, ...values)

/// @param {array} array
/// @param {int} pos
/// @param {int} amount
/// @param {value} ...values

/// @description

var _array, _pos, _delete_amount, _add_amount, _new_length, _mod_array, _new_array;
_array = argument[0];
_pos = argument[1];
_delete_amount = argument[2];
_add_amount = argument_count - 3;


//use array_delete to both delete and make the new array
_mod_array = array_delete(_array, _pos, _delete_amount);

_new_length = array_length_1d(_mod_array) + _add_amount;
_new_array = array_create(_new_length);

//loop through the original array and copy the values
//into the new array, adding in the values at location
for (var i = 0; i < _new_length; i++) {
	if (i < _pos) {
		_new_array[i] = _mod_array[i];
	} else if (i >= _pos + _add_amount) {
		_new_array[i] = _mod_array[i - _add_amount];
	} else {
		var _val = i - _pos + 3;
		_new_array[i] = argument[_val];
	}
}

//return the new array
return _new_array;
