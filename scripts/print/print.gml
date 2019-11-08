/// @description automatically turns non-strings into strings
/// @param args ....


var final_text = "";

for (var i = 0; i < argument_count; i += 1) {
   if (is_string(argument[i])) {
       final_text += argument[i];
   } else {
       final_text += string(argument[i]);
   }
}

show_debug_message(final_text);


