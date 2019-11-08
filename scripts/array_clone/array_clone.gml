/// @function array_clone(array)
/// @param {array} array
/// @description


var _old_array, _new_array;
_old_array = argument0;
_new_array = [];


for(var i = 0; i < array_length_1d(_old_array); i++){
    if(is_array(_old_array[i])) {
      	array_add(_new_array, array_flatten(_old_array[i]));  
    } else {
		array_add(_new_array, _old_array[i]);
    }
} 

return _new_array;
