/// @function sort_alphabetical_safe(value_1, value_2)

/// @param {string} value_1
/// @param {string} value_2

/// @description The sort script used to sort a list in alphabetical order.


//Make sure both values are numbers before checking
if (!is_string(argument0)) || (!is_string(argument1)) {
	return false;
}

//return true if value 1 is greater than value 2
return string_char_at(string_lower(argument0), 1) > string_char_at(string_lower(argument1), 1);;