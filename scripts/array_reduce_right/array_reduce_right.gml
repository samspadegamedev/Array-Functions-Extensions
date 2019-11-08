/// @function array_reduce_right(array)
/// @param {array} id
/// @description

var _accumulator = 0;
for (var i = array_length_1d(argument0) - 1; i >= 0; i--) {
	_accumulator += argument0[i];
}
return _accumulator;