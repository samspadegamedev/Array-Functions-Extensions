/// @function scr_array_insert(array, position, val1 [, val2, ... max_val])
/// @param {array_id} array
/// @param {int} position
/// @param {variable} value_1
/// @param {variables} ...values
/// @description Inserts the values specified starting at the specified point. 
///				 It does return the array; however, it will add them to the array itself. 


//rename arguments for ease of use
var _array = argument[0];

//add elements to the end of the array
for (var i = 1; i < argument_count; i += 1) {
	_array[@ array_length_1d(_array)] = argument[i];
}

//return the array
return _array;
