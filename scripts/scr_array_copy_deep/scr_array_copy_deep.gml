/// @function scr_array_copy_deep(array)
/// @param {array_id} array
/// @description Returns a deep copy of the provided array. 
///				 It will copy over any nested arrays. 
///				 Note - returns a new array. MUST be assigned to be any use.

//rename arguments for ease of use
var _old_array, _new_array;
_old_array = argument0;
_new_array = [];

//recursively loop the array and either copy or add as relevant
for(var i = 0; i < array_length_1d(_old_array); i++){
    if(is_array(_old_array[i])) {
      	array_add_to_end(_new_array, array_copy_deep(_old_array[i]));  
    } else {
		array_add_to_end(_new_array, _old_array[i]);
    }
} 

//return new array
return _new_array;
