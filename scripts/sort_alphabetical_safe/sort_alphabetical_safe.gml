/// @function sort_alphabetical_safe(value_1, value_2)
/// @param {string} value_1
/// @param {string} value_2
/// @description The sort script used to sort a list in alphabetical order. Will not cause an error if you pass a non string.


#region //DO NOT MODIFY
var _value_1, _value_2;
_value_1 = argument0;
_value_2 = argument1;
#endregion

//Make sure both values are numbers before checking
if (!is_string(_value_1)) || (!is_string(_value_2)) {
	return false;
}

//return true if value 1 is greater than value 2
return string_char_at(string_lower(_value_1), 1) > string_char_at(string_lower(_value_2), 1);;