/// @function scr_array_to_list_shallow(array)
/// @param {array_id} array
/// @description Takes an array and returns an list. Note - this function creates
///				 and returns an list. This list must be destroyed at some point. 
///				 Note - this is a shallow copy only. Will not create nested lists.


//rename arguments for ease of use
var _array, _new_list;
_array = argument0;

//create list
_new_list = ds_list_create();

//loop through array and add values to list
for (var i = 0; i < array_length_1d(_array); i += 1) {
	ds_list_add(_new_list, _array[i]);
}

//return new list
return _new_list;