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


#define array_insert
/// @function array_insert(id, pos, ...val)
/// @param {array} id
/// @param {int} pos
/// @param {value} ...values
/// @description Deletes the values specified starting at the specified point. Note - returns a new array. MUST be assigned to be any use.

{
    var _array, _pos, _amount, _new_length;
    _array = argument[0];
    _pos = argument[1];
    _amount = argument_count - 2;
    _new_length = array_length_1d(_array) + _amount;

    if (_pos > array_length_1d(_array)) return _array;

    for (var i = _new_length - 1; i >= 0; i--) {
        if (i < _pos) {
            _array[@ i] = _array[i];
        } else if (i >= _pos + _amount) {
            _array[@ i] = _array[i - _amount];
        } else {
            var _val = i - _pos + 2;
            _array[@ i] = argument[_val];
        }
    }

    return _array;
}


#define array_delete
/// @function array_delete(id, position, amount)
/// @param {array} id
/// @param {int} position
/// @param {int} amount
/// @description Deletes the amount of values specified starting at the specified. Note - returns a new array. MUST be assigned to be any use. Note - due to the way this script works, it will not error out if you use position or amounts outside of the array's range, but it will not work the way you think it will.

{
    var _amount, _length, _new_array;
    _length = array_length_1d(argument0);
    _amount = min(_length - argument1, argument2);
    _new_array = array_create(_length - _amount);

    for (var i = 0; i < _length - _amount; i++) {
        if (i < argument1) {
            _new_array[i] = argument0[i];
        } else {
            _new_array[i]= argument0[i + _amount];
        }
    }

    return _new_array;
}


#define array_splice
/// @function array_splice(array, pos, delete_amount, ...values)
/// @param {array} array
/// @param {int} pos
/// @param {int} amount
/// @param {value} ...values

{
    var _array, _position, _delete_amount, _add_amount, _new_array;
    _array = argument[0];
    _position = argument[1];
    _delete_amount = argument[2];
    _add_amount = argument_count - 3;

    _new_array = array_delete(_array, _position, _delete_amount);

    for (var i = array_length_1d(_new_array) + _add_amount - 1; i >= 0; i--) {
        if (i < _position) {
            _new_array[@ i] = _new_array[i];
        } else if (i >= _position + _add_amount) {
            _new_array[@ i] = _array[i - _add_amount];
        } else {
            _new_array[@ i] = argument[i - _position + 3];
        }
    }

    return _new_array;
}


#define array_join
/// @function array_join(...arrays)
/// @Param {array} ...arrays
/// @description Combines multiple arrays into one, and returns the new array. Note - returns a new array. MUST be assigned to be any use.

{
    var _new_array, _counter, _current_array;
    _new_array = [];
    _counter = 0;

    for (var i = 0; i < argument_count; i++) {
        _current_array = argument[i];
        for (var j = 0; j < array_length_1d(_current_array); j++) {
            _new_array[_counter++] = _current_array[j];
        }
    }

    return _new_array;
}


#define list_to_array_shallow
/// @function list_to_array_shallow(list)
/// @param {ds_list} list
/// @description Takes a list and returns an array. Note - this function does not destroy the list. Note - This is a shallow copy.

{
    var _length, _new_array;
    _length = ds_list_size(argument0);
    _new_array = array_create(_length);

    for (var i = 0; i < _length; i += 1) {
        _new_array[i] = argument0[| i];
    }

    return _new_array;
}


#define array_to_list_shallow
/// @function array_to_list_shallow(array)
/// @param {array} array
/// @description Takes an array and returns an list. Note - this function creates and returns an list. This list must be destroyed at some point. Note - this is a shallow copy only. Will not create nested lists.

{
    var = _new_list = ds_list_create();
    for (var i = 0; i < array_length_1d(argument0); i += 1) {
        ds_list_add(_new_list, argument0[i]);
    }

    return _new_list;
}


#define array_to_list_deep
/// @function array_to_list_deep(array)
/// @param {array} array
/// @description Takes an array and returns an list. Note - this function creates and returns an list. This list must be destroyed at some point. Note - this is a deep copy and will create nested lists. This lists must be destroyed as well. Switching ds_list_add with list_add_list will mark all sub lists as lists, allowing for automatic destruction of sub lists when destroying the main list.

{
    var _new_list = ds_list_create();
    for(var i = 0; i < array_length_1d(argument0); i++){
        if(is_array(argument0[i])) {
            ds_list_add(_new_list, array_to_list_deep(argument0[i]));  
        } else {
            ds_list_add(_new_list, argument0[i]);
        }
    } 
    
    return _new_list;
}







