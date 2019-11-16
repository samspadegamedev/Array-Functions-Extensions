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
/// @description Returns the value of an array at the given index if the index is a valid index. Otherwise returns undefined.

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
/// @description Sets the value of an array at the given index if the index is a valid index. Returns the array regardless of whether the value was updated or not.

{
    if (array_valid_index(argument0, argument1)) {
        argument0[@ argument1] = argument2;
    }

    return argument0;
}


#define array_swap_positions
/// @function array_swap_positions(array, position_1, position_2)
/// @param {array} array			
/// @param {int} position_1				
/// @param {int} position_2
/// @description Swaps two positions in an array. It does return the array; however, it swaps them in position.

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
    var _new_array, _length;
    _new_array = [];
    _length = array_length_1d(argument0);
    for(var i = 0; i < _length; i++){
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
/// @description Add variables to the end of an array. It does return the array; however, it will add them to the array itself. 

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
/// @description Inserts the values specified starting at the specified point. It does return the array; however, it will add them to the array itself. 

{
    var _array, _pos, _amount_to_add, _new_length;
    _array = argument[0];
    _pos = argument[1];
    _amount_to_add = argument_count - 2;
    _new_length = array_length_1d(_array) + _amount_to_add;

    if (_pos > array_length_1d(_array)) return _array;

    for (var i = _new_length - 1; i >= 0; i--) {
        if (i < _pos) {
            _array[@ i] = _array[i];
        } else if (i >= _pos + _amount_to_add) {
            _array[@ i] = _array[i - _amount_to_add];
        } else {
            _array[@ i] = argument[i - _pos + 2];
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
    var _amount_to_delete, _length, _new_array;
    _length = array_length_1d(argument0);
    _amount_to_delete = min(_length - argument1, argument2);
    _new_array = array_create(_length - _amount_to_delete);

    for (var i = 0; i < _length - _amount_to_delete; i++) {
        if (i < argument1) {
            _new_array[i] = argument0[i];
        } else {
            _new_array[i]= argument0[i + _amount_to_delete];
        }
    }

    return _new_array;
}


#define array_splice
/// @function array_splice(array, position, amount_to_delete, ...values)
/// @param {array} array
/// @param {int} position
/// @param {int} amount_to_delete
/// @param {value} ...values

{
    var _array, _position, _amount_to_delete, _amount_to_add, _new_array;
    _array = argument[0];
    _position = argument[1];
    _amount_to_delete = argument[2];
    _amount_to_add = argument_count - 3;

    _new_array = array_delete(_array, _position, _amount_to_delete);

    for (var i = array_length_1d(_new_array) + _amount_to_add - 1; i >= 0; i--) {
        if (i < _position) {
            _new_array[@ i] = _new_array[i];
        } else if (i >= _position + _amount_to_add) {
            _new_array[@ i] = _array[i - _amount_to_add];
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
/// @description Takes an array and returns an list. Note - this function creates and returns a list. This list must be destroyed at some point. Note - this is a shallow copy only. Will not create nested lists.

{
    var _new_list, _length;
    _new_list = ds_list_create();
    _length = array_length_1d(argument0)
    for (var i = 0; i < _length; i += 1) {
        ds_list_add(_new_list, argument0[i]);
    }

    return _new_list;
}


#define array_to_list_deep
/// @function array_to_list_deep(array)
/// @param {array} array
/// @description Takes an array and returns an list. Note - this function creates and returns an list. This list must be destroyed at some point. Note - this is a deep copy and will create nested lists. This lists must be destroyed as well. Switching ds_list_add with list_add_list will mark all sub lists as lists, allowing for automatic destruction of sub lists when destroying the main list.

{
    var _new_list, _length;
    _new_list = ds_list_create();
    _length = array_length_1d(argument0)
    for(var i = 0; i < _length; i++){
        if(is_array(argument0[i])) {
            ds_list_add(_new_list, array_to_list_deep(argument0[i]));  
        } else {
            ds_list_add(_new_list, argument0[i]);
        }
    } 
    
    return _new_list;
}


#define array_equals_deep
/// @function array_equals_deep(array, array)
/// @param {array} array
/// @param {array} array
/// @description Returns true if the two arrays contain the same value as each other. Tests against all nested copies.

{
    if (array_length_1d(argument0) != array_length_1d(argument1)) {
        return false;
    } 

    var _length = array_length_1d(argument0)
    for(var i = 0; i < _length; i++) {
        if(is_array(argument0[i]) && is_array(argument1[i])) {
            if(!array_equals_deep(argument0[i], argument1[i])) return false;
        } else {
            if (argument0[i] != argument1[i]) return false;
        }
    } 

    return true;
}


#define array_find_index
/// @function array_find_index(array, value)
/// @param {array} array
/// @param {variable} value
/// @description Returns the first index of the value specified, searching from left to right. Returns -1 if the value is not found.

{
    var _length = array_length_1d(argument0);
    for (var i = 0; i < _length; i++) {
        if (argument0[i] == argument1) {
            return i;
        }
    }

    return -1;    
}


#define array_find_index_non_strict
/// @function array_find_index_non_strict(array, value)
/// @param {array} array
/// @param {variable} value
/// @description Returns the first index of the value specified, searching from left to right. Returns -1 if the value is not found.

{
    var _length = array_length_1d(argument0);

    switch (is_array(argument1)) {

        case false:
            for (var i = 0; i < _length; i++) {
                if (argument0[i] == argument1) {
                    return i;
                }	
            }
            break;

        case true:
            for (var i = 0; i < _length; i++) {
                if (array_equals_deep(argument0[i], argument1)) {
                    return i;
                }	
            }
            break;
    }

    return -1;   
}


#define array_find_index_all
/// @function array_find_index_all(array, value)
/// @param {array} array
/// @param {variable} value
/// @description Returns an array of all indexs containing the value specified, searching from left to right. Returns an empty array if the value is not found.

{
    var _length, _new_array, _counter;
    _length = array_length_1d(argument0);
    _new_array = [];
    _counter = 0;
    
    for (var i = 0; i < _length; i++) {
        if (argument0[i] == argument1) {
            _new_array[_counter++] = i;
        }
    }

    return _new_array;
}


#define array_accumulate
/// @function array_accumulate(array)
/// @param {array} array
/// @description Returns the total value of all numbers in an array. Note - this script will cause an error if the array contains anything except numbers.

{
    var _length, _accumulator;
    _length = array_length_1d(argument0);
    _accumulator = 0;

    for (var i = 0; i < _length; i++) {
        _accumulator += argument0[i];
    }

    return _accumulator;    
}


#define array_flatten
/// @function array_flatten(array)
/// @param {array} array
/// @description Recursively loops through the provided array and returns a new array the contains the values of the old array without any nesting. Note - will remove any completely empty arrays.  Note - returns a new array. MUST be assigned to be any use.

{
    var _new_array, _length; 
    _new_array = [];
    _length = array_length_1d(argument0);
    
    for(var i = 0; i < _length; i++){
        if(is_array(argument0[i])) {
            _new_array = array_join(_new_array, array_flatten(argument0[i]));  
        } else {
            array_add_to_end(_new_array, argument0[i]);
        }
    } 

    return _new_array;
}


#define array_sort
/// @function array_sort(array, sorting_script)
/// @param {array} array
/// @param {script} sorting_script
/// @description Sorts an array using the sorting script provided. Modifies and eturns the original array. Does not need to be assigned. Uses a simple bubble sort: Time Complexity is O(n^2)

{
    var _no_change;

    for (var i = array_length_1d(argument0); i > 0; i -= 1) {
        _no_change = true;
        for (var j = 0; j < i - 1; j+= 1) {
            if (script_execute(argument1, argument0[j], argument0[j + 1])) {
                array_swap_positions(argument0, j, j + 1);
                _no_change = false;
            }

        }
        if (_no_change) break;
    }

    return argument0;
}


#define array_shuffle
/// @function array_shuffle(array)
/// @param {array} array
/// @description Randomizes the order of an array. It does return the array, however, it will add them to the array itself. 

{
    var _length = array_length_1d(argument0);
    repeat (_length)
    {
        array_swap_positions(argument0, irandom(_length - 1), irandom(_length - 1));
    }

    return argument0;
}


#define array_filter
/// @function array_filter(array, filter_script)
/// @param {array} array
/// @param {script} filter_script
/// @description Creates and returns a new array that only has the values from the prior array that meet the requirement of the filter script.

{
    var _new_array, _counter, _length;
    _new_array = [];
    _counter = 0;
    _length = array_length_1d(argument0);
    for (var i = 0; i < _length; i += 1) {
        if (script_execute(argument1, argument0[i])) {
            _new_array[_counter++] = argument0[i];
        }
    }

    return _new_array;
}


#define array_for_each
/// @function array_for_each(array, script, script_arguments_array)
/// @param {array} array
/// @param {scripts} script_id
/// @param {array} arguments
/// @description Performs the script on each element of the array. It does return the array, however, it will add them to the array itself. 

{
    var _array, _script_id, _script_arguments_array, _length;
    _array = argument[0];
    _script_id = argument[1];
    _script_arguments_array = [];
    _length = array_length_1d(_array);
    
    if (argument_count == 3) {
        _script_arguments_array = argument[2];        
    } 

    for (var i = 0; i < _length; i++) {
        _array[@ i] = script_execute(_script_id, _array[i], _script_arguments_array);
    }

    return _array;
}


#define array_for_each_copy
/// @function array_for_each_copy(array, script, script_arguments_array)
/// @param {array} array
/// @param {scripts} script_id
/// @param {array} arguments
/// @description Copies the array and performs the script on each element of the copied array. Note - returns a new array. MUST be assigned to be any use.

{
    
    var _array, _script_id, _script_arguments_array, _length, _new_array;
    _array = argument[0];
    _script_id = argument[1];
    _script_arguments_array = [];
    _length = array_length_1d(_array);
    
    if (argument_count == 3) {
        _script_arguments_array = argument[2];        
    } 
    
    _new_array = array_copy_shallow(_array);   
    for (var i = 0; i < _length; i++) {
        _new_array[i] = script_execute(_script_id, _array[i], _script_arguments_array);
    }

    return _new_array;   
}









