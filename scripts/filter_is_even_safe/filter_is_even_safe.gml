/// @function callback_template(value)

/// @param {variable} value

/// @description A template script for use with filter


//rename the arguments for ease of use
var _value;
_value = argument0;

//safty check
if (is_real(_value)) {
	
	//return evaluation
	return _value % 2 == 0;
}

//failsafe return
return false;