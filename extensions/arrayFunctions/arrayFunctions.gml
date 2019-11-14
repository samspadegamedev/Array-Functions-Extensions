#define array_valid_index
/// @function array_valid_index(array, index)
/// @param {array} array
/// @param {int} index
/// @description Returns true if the index is a valid index for the array. Otherwise returns false. 

{
    if (is_real(argument1)) {
        if (argument1 == floor(argument1)) {
            if (argument1 >= 0) && (argument1 < array_length_1d(argument0)) {
                return true;
            }
        }
    }
    
    return false;
}


#define array_get_safe
/// @function array_get_safe(array, index)
/// @param {array} array
/// @param {int} index
/// @description Returns the value of an array at the given index. If the index is a valid index. Otherwise returns undefined.

{
    if (array_valid_index(argument0, argument1)) {
        return argument0[argument1];
    }

    return undefined;
}


#define array_set_safe
/// @function array_get_safe(array, index, value)
/// @param {array} array
/// @param {int} index
/// @param {variable} value
/// @description Sets the value of an array at the given index. If the index is a valid index. Returns the array regardless of whether the value was updated or not.

{
    if (array_valid_index(argument0, argument1)) {
        argument0[@ argument1] = argument2;
    }

    return argument0;
}


#define array_swap
/// @function array_swap(array, pos_1, pos_2)
/// @param {array} array			
/// @param {int} pos_1				
/// @param {int} pos_2
/// @description Swaps two positions in an array. It does return the array, however, it will swap them in position. Note: this function will error out if you try to reference a position outside of the array.

{
    var _temp = argument0[argument1];
    argument0[@ argument1] = argument0[argument2];
    argument0[@ argument2] = _temp;

    return argument0;
}


#define array_copy_shallow
/// @function array_copy_shallow(array)
/// @param {array} array		
/// @description Copies an array and returns the copied array. You must assign the returned array to a variable for it to work. This is a shallow copy, and does not copy nested levels. If you want to copy nested levels, you array_copy_deep.

{
    var _length, _new_array;
    _length = array_length_1d(argument0);
    _new_array = array_create(_length);

    array_copy(_new_array, 0, argument0, 0, _length);

    return _new_array;
}

#define array_copy_deep
/// @function array_copy_deep(array)
/// @param {array} array
/// @description Returns a deep copy of the provided array. It will copy over any nested arrays. Note - returns a new array. MUST be assigned to be any use.

{
    var _new_array = [];
    for(var i = 0; i < array_length_1d(argument0); i++){
        if(is_array(argument0[i])) {
            array_add_to_end(_new_array, array_copy_deep(argument0[i]));  
        } else {
            array_add_to_end(_new_array, argument0[i]);
        }
    } 

    return _new_array;
}


#define array_add_to_end
/// @function array_add(array, ...)
/// @param {array} array			
/// @param {variables} ...values			
/// @description Add variables to the end of an array. It does return the array, however, it will add them to the array itself. 

{
    var _array = argument[0];   
    for (var i = 1; i < argument_count; i += 1) {
        _array[@ array_length_1d(_array)] = argument[i];
    }
    
    return _array;
}