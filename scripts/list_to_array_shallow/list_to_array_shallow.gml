/// @function array_to_list_shallow(list)

/// @param {ds_list} list

/// @description Takes a list and returns an array. Note - this function does
///				 not destroy the list. Note - This is a shallow copy.


//rename arguments for ease of use
var _list, _length, _new_array;
_list = argument0;
_length = ds_list_size(_list);

//create list
_new_array = array_create(_length);

//loop through array and add values to list
for (var i = 0; i < _length; i += 1) {
	_new_array[i] = _list[| i];
}

//return new list
return _new_array;