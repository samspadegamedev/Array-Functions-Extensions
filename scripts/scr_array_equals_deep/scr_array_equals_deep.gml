/// @function array_equals_deep(array, array)

/// @param {array} array
/// @param {array} array

/// @description Returns true if the two arrays are equal to each other
///				 Tests against all nested copies.


//rename arguments for ease of use
var _array_a, _array_b; 
_array_a = argument0;
_array_b = argument1;


//if lengths are different, they're not the same
if (array_length_1d(_array_a) != array_length_1d(_array_b)) {
	return false;
} 


//recursively loop the array and test sub arrays
for(var i = 0; i < array_length_1d(_array_a); i++) {
    if(is_array(_array_a[i]) && is_array(_array_b[i])) {
      	if(!array_equals_deep(_array_a[i], _array_b[i])) return false;
    } else {
		if (_array_a[i] != _array_b[i]) return false;
    }
} 


//return true if it hasn't been shown to be false
return true;