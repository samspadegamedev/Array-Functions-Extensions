GENERAL OVERVIEW

Array Functions is a set of scripts that extend the normal use and function of arrays.
This set of array functions specifically extends the normal use of 1d arrays and does
not add any functionality to 2d arrays.

The following is a list of the built in GameMaker Studio 2 1d array functions:
- array_create
- array_copy
- array_equals
- array_set
- array_get
- array_length_1d
- is_array

You can find out more about these functions in the manual. Some of them are used
inside of the custom array functions.

The following is a list of the added functions:

EXTENSION SCRIPTS
- array_valid_index
- array_swap_positions
- array_copy_shallow			
- array_copy_deep	
- array_add_to_end					
- array_insert				
- array_delete				
- array_splice	
- array_join	
- array_combine_strings
- array_to_list_shallow			
- array_to_list_deep		
- list_to_array_shallow			
- array_equals_deep
- array_flatten	
- array_find_index			
- array_find_index_custom	
- array_find_index_last			
- array_find_index_last_custom	
- array_find_index_all
- array_find_index_all_custom
- array_every
- array_some
- array_filter				
- array_reduce	
- array_sort		
- array_shuffle			
- array_reverse
- array_for_each_copy					
- array_for_each					

HELPER SCRIPT TEMPLATES
- callback_template
- sort_template

SORT SCRIPT TEMPLATES
- sort_alphabetical_safe
- sort_ascending
- sort_ascending


NOTES ABOUT SCRIPTS

I have attempted to operate on the array directly when possible, but in a number of cases
it just doesn't appear to be due to the way GML handles arrays. For example, there is no
ability to shrink an array's size, so any script which does that has to return a new array.

I have not performanced tested any of the scripts. And in general, if choosing between an 
easy to understand but more verbose version or a single line version, when with the more
verbose version for ease of understanding and debugging.

Some of the array functions included in the extension take helper scripts. There are two
types of helper scripts. The first type is the sort script. A template has been included
along with several of the most basic sorts. You can write your own sort scripts and pass
the script into the array_sort function. The second type of script is more complicated.
The callback script is used for:
- array_find_index_custom
- array_find_index_last_custom
- array_find_index_all_custom
- array_every
- array_some
- array_filter
- array_reduce
- array_for_each
- array_for_each_copy

Functions that use callback scripts take the script and option arguments. All arguments
must be passed as an array (this is necessary because script_execute doesn't allow variable
amount of arguments to be passed to it). Callback scripts therefore must accept all arguments
beyond the value being passed into it as an array and work with those arguments as an array.
See the github repo for some basic examples. 






