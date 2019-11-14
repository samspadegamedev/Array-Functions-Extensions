/// @function array_flatten(array)

/// @param {array} array

/// @description Recursively loops through the provided array and returns a new array
///				 the contains the values of the old array without any nesting.
///				 Note - will remove any completely empty arrays. 
///				 Note - returns a new array. MUST be assigned to be any use.


//rename arguments for ease of use
var _old_array, _new_array;
_old_array = argument0;
_new_array = [];

//recursively loop through array, flattening or adding as necessary
for(var i = 0; i < array_length_1d(_old_array); i++){
    if(is_array(_old_array[i])) {
      	_new_array = array_combine(_new_array, array_flatten(_old_array[i]));  
    } else {
		array_add_to_end(_new_array, _old_array[i]);
    }
} 

//return new array
return _new_array;



