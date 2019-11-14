/// @function array_add(array, ...)

/// @param {array} array			
/// @param {variables} ...values			

/// @description Add variables to the end of an array. It does return the array,
///				 however, it will add them to the array itself. 


//rename arguments for ease of use
var _array = argument[0];

//add elements to the end of the array
for (var i = 1; i < argument_count; i += 1) {
	_array[@ array_length_1d(_array)] = argument[i];
}

//return the array
return _array;
