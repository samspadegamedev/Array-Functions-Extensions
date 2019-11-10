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
- array_swap
- array_add					
- array_insert				
- array_delete				
- array_splice				
- array_find_index			
- array_shuffle			
- array_sort				
- array_copy_shallow			
- array_copy_deep				
- array_combine				
- array_filter				
- array_map					
- array_for_each			
- array_flatten				
- array_accumulate		
- array_to_list			
- list_to_array			


NOTES ABOUT SCRIPTS

I have attempted to operate on the array directly when possible, but in a number of cases
it just doesn't appear to be due to the way GML handles arrays. For example, there is no
ability to shrink an array's size, so any script which does that has to return a new array.

I have not performanced tested any of the scripts. And in general, if choosing between an 
easy to understand but more verbose version or a single line version, when with the more
verbose version for ease of understanding and debugging.


CURRENT TODO LIST

- strict and non-strict value of array_find_index
- array_equals_deep
- array_to_list_deep (and rename earlier version)
- list_to_array_deep (and rename earlier version)
- implement actual testing






