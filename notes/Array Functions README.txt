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
- array_valid_index
- array_get_safe
- array_set_safe
- array_swap
- array_copy_shallow			
- array_copy_deep	
- array_add					
- array_insert				
- array_delete				
- array_splice				
- array_find_index			
- array_find_index_non_strict			
- array_find_index_all
- array_accumulate	
- array_join	
- array_shuffle			
- array_sort										
- array_filter				
- array_for_each_copy					
- array_for_each			
- array_flatten					
- array_to_list_shallow			
- array_to_list_deep		
- list_to_array_shallow			
- list_to_array_deep		
- array_equals_deep


NOTES ABOUT SCRIPTS

I have attempted to operate on the array directly when possible, but in a number of cases
it just doesn't appear to be due to the way GML handles arrays. For example, there is no
ability to shrink an array's size, so any script which does that has to return a new array.

I have not performanced tested any of the scripts. And in general, if choosing between an 
easy to understand but more verbose version or a single line version, when with the more
verbose version for ease of understanding and debugging.


QUESTIONS
There's no way to set a value in an empty array with array_set_safe. I think this should 
be the expected result. But I will think about it.

array_set_safe accepts true and false (0 and 1) as valid indexs assuming the array has a 
length of 0 or 1. This seems like an issue with array_valid_index which I should double
check.

array_insert can accept a position larger than its size. Filling the blanks with zeros. 
How to handle some of the strange inputs with inserting and deleint? Throw errors or do the 
best possible? 




