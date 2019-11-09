/// @function array_delete(id, position, amount)

/// @param {array} id
/// @param {int} position
/// @param {int} amount

/// @description Deletes the amount of values specified starting at the specified.
///				 Note - returns a new array. MUST be assigned to be any use.
///				 Note - due to the way this script works, it will not error out if
///				 you use position or amounts outside of the array's range, but it 
///				 will not work the way you think it will.


//rename arguments for ease of use
var _array, _position, _amount, _length, _new_array;
_array = argument0;
_position = argument1;
_amount = argument2;
_length = array_length_1d(_array);

//create the new shorter array
_new_array = array_create(_length - _amount);

//loop through the original array and copy the values
//into the new array, skipping the values to be deleted
for (var i = 0; i < _length - _amount; i++) {
	if (i < _position) {
		_new_array[i] = _array[i];
	} else {
		_new_array[i]= _array[i + _amount];
	}
}

//return the new array
return _new_array;