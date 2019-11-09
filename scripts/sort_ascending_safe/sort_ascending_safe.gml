/// @function sort_ascending_safe(value_1, value_2)

/// @param {?} value_1
/// @param {?} value_2

/// @description The sort script used to sort a list in ? order.


//Make sure both values are numbers before checking
if (is_nan(argument0)) || (is_nan(argument1)) {
	return false;
}

//return true if value 1 is greater than value 2
return argument0 > argument1;;