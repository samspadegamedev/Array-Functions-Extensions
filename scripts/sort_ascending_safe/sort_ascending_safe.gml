/// @function sort_ascending_safe(value_1, value_2)
/// @param {real} value_1
/// @param {real} value_2
/// @description The sort script used to sort a list in numerical order. Will not cause an error if you pass a string.


#region //DO NOT MODIFY
var _value_1, _value_2;
_value_1 = argument0;
_value_2 = argument1;
#endregion

//Make sure both values are numbers before checking
if (is_nan(_value_1)) || (is_nan(_value_2)) {
	return false;
}

//return true if value 1 is greater than value 2
return _value_1 > _value_2;



