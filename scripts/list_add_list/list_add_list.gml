/// @function list_add_list(main_list, list_to_add)

/// @param {ds_list} main_list 
/// @param {ds_list} list_to_add 

/// @description Adds second list to the first list and mark the second list as a list.


//rename arguments for ease of use
var _main_list, _list_to_add, _pos;
_main_list = argument0;
_list_to_add = argument1;

ds_list_add(_main_list, _list_to_add);
_pos = ds_list_find_index(_main_list, _list_to_add);
ds_list_mark_as_list(_main_list, _pos);

//returns the main_list
return argument0;
