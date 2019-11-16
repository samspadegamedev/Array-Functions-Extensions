/// @function callback_template(value, script_arguments)
/// @param {variable} value
/// @param {array} script_arguments
/// @description A template callbakc script. DO NOT CHANGE THE PARAMS


#region //DO NOT MODIFY
var _value, _scrit_arguments_array;
_value = argument0;
_scrit_arguments_array = argument1;
#endregion

//do something here
switch (is_array(_scrit_arguments_array[0])) {
	
	case false:
		return _scrit_arguments_array[0] == _value;
		break;
		
	case true:
		return array_equals_deep(_scrit_arguments_array[0], _value);
		break;
}


//return false as fail safe
return false;