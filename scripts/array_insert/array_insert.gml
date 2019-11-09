/// @function array_insert(id, pos, ...val)

/// @param {array} id
/// @param {int} pos
/// @param {value} ...values

/// @description Deletes the values specified starting at the specified point.
///				 Note - returns a new array. MUST be assigned to be any use.

//rename arguments for ease of use
var _array, _pos, _amount, _new_length, _new_array;
_array = argument[0];
_pos = argument[1];
_amount = argument_count - 2;
_new_length = array_length_1d(_array) + _amount;
_new_array = array_create(_new_length);

//loop through the original array and copy the values
//into the new array, adding in the values at location
for (var i = 0; i < _new_length; i++) {
	if (i < _pos) {
		_new_array[i] = _array[i];
	} else if (i >= _pos + _amount) {
		_new_array[i] = _array[i - _amount];
	} else {
		var _val = i - _pos + 2;
		_new_array[i] = argument[_val];
	}
}

//return new array
return _new_array;



