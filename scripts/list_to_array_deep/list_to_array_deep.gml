/// @function array_to_list_deep(list)

/// @param {ds_list} list

/// @description Takes a list and returns an array. Note - This is a deep copy.
///				 Note - this function does not destroy the list or sub lists. 
///				 Note - I'm not sure this function can actually work as there is
///				 no way to distinguish whether a nested list is a list or just a number?


////rename arguments for ease of use
//var _list, _length, _new_array;
//_list = argument0;
//_length = ds_list_size(_list);

////create list
//_new_array = array_create(_length);

////loop through array and add values to list
//for (var i = 0; i < _length; i += 1) {
//	_new_array[i] = _list[| i];
//}

////recursively loop the array and either copy or add as relevant
//for(var i = 0; i < _length; i++){
//    if(is_list(_list[i])) {
//      	_new_array[i] = list_to_array_deep(_list[| i]);  
//    } else {
//		_new_array[i] = _list[| i];
//    }
//} 


////return new list
//return _new_array;