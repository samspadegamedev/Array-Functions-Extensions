/// @function array_accumulate(array)

/// @param {array} array

/// @description Returns the total value of all numbers in an array. Note - this script
///				 will cause an error if the array contains anything except numbers.


//rename arguments for ease of use
var _array, _length, _accumulator;
_array = argument0;
_length = array_length_1d(_array);
_accumulator = 0;

//loop through array and accumulate total
for (var i = 0; i < _length; i++) {
	_accumulator += _array[i];
}

//return total
return _accumulator;