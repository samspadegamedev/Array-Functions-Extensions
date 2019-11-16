/// @function scr_array_splice(array, position, amount_to_delete, val1 [, val2, ... max_val])
/// @param {array_id} array
/// @param {int} position
/// @param {int} amount_to_delete
/// @param {variable} value_1
/// @param {variables} ...values
/// @description First deletes teh amount of values specified starting
///				 at the specified position. Then adds in the new values
///				 starting at that position. Note - this will return a 
///				 new list.

var _array, _pos, _delete_amount, _add_amount, _new_array;
_array = argument[0];
_pos = argument[1];
_delete_amount = argument[2];
_add_amount = argument_count - 3;


//use array_delete to both delete and make the new array
_new_array = array_delete(_array, _pos, _delete_amount);

//loop through the original array and copy the values
//into the new array, adding in the values at location
for (var i = array_length_1d(_new_array) + _add_amount - 1; i >= 0; i--) {
	if (i < _pos) {
		_new_array[@ i] = _new_array[i];
	} else if (i >= _pos + _add_amount) {
		_new_array[@ i] = _array[i - _add_amount];
	} else {
		var _val = i - _pos + 3;
		_new_array[@ i] = argument[_val];
	}
}

//return the new array
return _new_array;
