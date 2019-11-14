/// @function array_copy_shallow(array)

/// @param {array} array		

/// @description Copies an array and returns the copied array. You must
///				 Assign the returned array to a variable for it to work.
///				 This is a shallow copy, and does not copy nested levels.
///				 If you want to copy nested levels, you array_copy_deep.


//rename arguments for ease of use
var _array_to_copy, _len, _new_array;
_array_to_copy = argument0;
_len = array_length_1d(_array_to_copy);
_new_array = array_create(_len);

//copy array
array_copy(_new_array, 0, _array_to_copy, 0, _len);

//return array
return _new_array;


