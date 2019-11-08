/// @function array_shuffle(array)
/// @param {array} array
/// @description


var _array, _length;
_array = argument0;
_length = array_length_1d(_array);

repeat (_length)
{
	array_swap(_array, irandom(_length - 1), irandom(_length - 1));
}
