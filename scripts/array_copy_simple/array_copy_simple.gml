/// @function array_copy_simple(array)

/// @param {array} array		the array to copy

/// @description Copies an array and returns the copied array. 
///				 This is a shallow copy, and does not do nested levels.

var _array_to_copy, _len, _new_array;
_array_to_copy = argument0;
_len = array_length_1d(_array_to_copy);
_new_array = array_create(_len);
array_copy(_new_array, 0, _array_to_copy, 0, _len);
return _new_array;