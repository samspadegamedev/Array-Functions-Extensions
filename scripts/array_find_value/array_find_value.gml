/// @function array_find_value(id, value)
/// @param {array} id
/// @param {value} value
/// @description


for (var i = array_length_1d(argument0) - 1; i >= 0; i--) {
	if (argument0[i] == argument1) {
		return i;
	}
}
return -1;