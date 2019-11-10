/// @function array_to_list_deep(array)

/// @param {array} array

/// @description Takes an array and returns an list. Note - this function creates
///				 and returns an list. This list must be destroyed at some point. 
///				 Note - this is a deep copy and will create nested lists. This 
///				 lists must be destroyed as well. Switching ds_list_add with
///				 list_add_list will mark all sub lists as lists, allowing for
///				 automatic destruction of sub lists when destroying the main list.


//rename arguments for ease of use
var _array, _new_list;
_array = argument0;

//create list
_new_list = ds_list_create();

//recursively loop the array and either copy or add as relevant
for(var i = 0; i < array_length_1d(_array); i++){
    if(is_array(_array[i])) {
      	ds_list_add(_new_list, array_to_list_deep(_array[i]));  
      	//list_add_list(_new_list, array_to_list_deep(_array[i]));  
    } else {
		ds_list_add(_new_list, _array[i]);
    }
} 

//return new list
return _new_list;