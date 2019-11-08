/// @function array_reduce(array)
/// @param {array} id
/// @description

var _accumulator = 0;
var _length = array_length_1d(argument0);
for (var i = 0; i < _length; i++) {
	_accumulator += argument0[i];
}
return _accumulator;