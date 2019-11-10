/// @description Function Tester


//start debug messages
print_start("RUNNING TESTS");
print();

#region //tests

#region ///array_valid_index test
print_start("Array Valid Index TEST 1");
array = [0, 1, 3, 4, 5];
print("Initial array: ", array);
print("Index of 0: ", array_valid_index(array, 0));
print("Index of 1: ", array_valid_index(array, 1));
print("Index of -1: ", array_valid_index(array, -1));
print("Index of 1.5: ", array_valid_index(array, 1.5));
print("Index of 5: ", array_valid_index(array, 5));
print("Index of Hello World: ", array_valid_index(array, "Hello World"));

print_start("Array Valid Index TEST 2");
array = [];
print("Initial array: ", array);
print("Index of 0: ", array_valid_index(array, 0));
#endregion

#region ///array_get_safe test
print_start("Array Get Safe TEST 1");
array = ["Hello World", "Goodbye"];
print("Initial array: ", array);
print("Get Value at 0: ", array_get_safe(array, 0));
print("Get Value at 1: ", array_get_safe(array, 1));
print("Get Value at Hello World: ", array_get_safe(array, "Hello World"));
print("Get Value at -1: ", array_get_safe(array, -1));
print("Get Value at 1.2: ", array_get_safe(array, 1.2));
print("Get Value at 3: ", array_get_safe(array, 3));

print_start("Array  Get Safe TEST 2");
array = [];
print("Initial array: ", array);
print("Get Value at 0: ", array_get_safe(array, 0));
#endregion

#region ///array_set_safe test
print_start("Array Set Safe TEST 1");
array = ["Hello World", "Goodbye"];
print("Initial array: ", array);
print("Set Value at 0: ", array_set_safe(array, 0, "Test 1"));
print("Set Value at 1: ", array_set_safe(array, 1, "Test 2"));
print("Set Value at Hello World: ", array_set_safe(array, "Hello World", "Test 3"));
print("Set Value at -1: ", array_set_safe(array, -1, "Test 4"));
print("Set Value at 1.1: ", array_set_safe(array, 1.1, "Test 5"));
print("Set Value at 3: ", array_set_safe(array, 3, "Test 6"));

print_start("Array  Get Safe TEST 2");
array = [];
print("Initial array: ", array);
print("Set Value at 0: ", array_set_safe(array, 0, "Test 7"));
#endregion

#region ///array_swap test
print_start("Array Swap TEST 1");
array = [0, 1];
print("Initial array: ", array);
array_swap(array, 0, 1);
print("After Swaping: ", array);

print_start("Array Swap TEST 2");
array = [0, [], 1];
print("Initial array: ", array);
array_swap(array, 2, 1);
print("After Swaping: ", array);
#endregion

#region ///array_copy_shallow test
print_start("Array Copy Shallow");
array = [0, 1, "Hello World"];
shallow_copy = array_copy_shallow(array);
print("Initial array: ", array);
print("Copied Array: ", shallow_copy);
#endregion

#region ///array_add test
print_start("Array Add");
array = [0, 1];
print("Initial array: ", array);
array_add(array);
print("After Adding: ", array);
array_add(array, "Hello World");
print("After Adding: ", array);
array_add(array, 2, 3, 4, "Goodbye");
print("After Adding: ", array);
#endregion

#region ///array_delete test
print_start("Array Delete TEST 1");
array = [0, 1, "Hello World"];
print("Initial array: ", array);
array = array_delete(array, 0, 2);
print("After Deleting: ", array);

print_start("Array Delete TEST 2");
array = [0, 1, 2, 3, 4, 5];
print("Initial array: ", array);
array = array_delete(array, 5, 5);
print("After Deleting: ", array);

print_start("Array Delete TEST 3");
array = [1, 2, 3, 4, 5];
print("Initial array: ", array);
array = array_delete(array, 1.5, 1);
print("After Deleting: ", array);
#endregion

#region ///array_insert test
print_start("Array Insert TEST 1");
array = [0, 1, "Hello World"];
print("Initial array: ", array);
array = array_insert(array, 0, 2);
print("After Inserting: ", array);

print_start("Array Insert TEST 2");
array = [0, 1, 2, 3, 4, 5];
print("Initial array: ", array);
array = array_insert(array, 5, "Hello World");
print("After Inserting: ", array);
#endregion

#region ///array_splice test
print_start("Array Splice TEST 1");
array = [0, 1, "Hello World"];
print("Initial array: ", array);
array = array_splice(array, 2, 1, 2, 3, 4, 5);
print("After Splicing: ", array);

print_start("Array Splice TEST 2");
array = [0, 1, 2, 3, 4, 5];
print("Initial array: ", array);
array = array_splice(array, 0, 6, "Hello World");
print("After Splicing: ", array);
#endregion

#region ///array_find_index test
print_start("Array Find Value TEST 1");
array = [0, 1, "Hello World", 2, 3, 4, 5];
print("Initial array: ", array);
print("Index of Hello World is: ", array_find_index(array, "Hello World"));
print("Index of Goodbye is: ", array_find_index(array, "Goodbye"));

print_start("Array Find Value TEST 2");
array = [];
print("Initial array: ", array);
print("Index of Hello World is: ", array_find_index(array, "Hello World"));
#endregion

#region ///array_find_index_all test
print_start("Array Find Index All TEST 1");
array = [0, 1, "Hello World", 1, 3, 1, 5];
print("Initial array: ", array);
print("Indexs of 1 is: ", array_find_index_all(array, 1));
print("Index of Hello World is: ", array_find_index_all(array, "Hello World"));
print("Index of Goodbye is: ", array_find_index_all(array, "Goodbye"));

print_start("Array Find Index All TEST 2");
array = [];
print("Initial array: ", array);
print("Index of Hello World is: ", array_find_index_all(array, "Hello World"));
#endregion

#region ///array_find_index_non_strict test
print_start("Array Find Value non strict TEST 1");
array = [0, 1, "Hello World", 2, [0, 1, 2], 4, 5];
print("Initial array: ", array);
print("Index of Hello World is: ", array_find_index_non_strict(array, [0, 1, 2]));
print("Index of Goodbye is: ", array_find_index_non_strict(array, [0, 2]));

print_start("Array Find Value non strict TEST 2");
array = [];
print("Initial array: ", array);
print("Index of Hello World is: ", array_find_index_non_strict(array, [0, 1, 2]));
#endregion

#region ///array_accumulate test
print_start("Array Accumulate TEST 1");
array = [0, 1, 2, 3, 4, 5];
print("Initial array: ", array);
print("Accumulated Value is: ", array_accumulate(array));

print_start("Array Accumulate TEST 2");
array = [];
print("Initial array: ", array);
print("Accumulated Value is: ", array_accumulate(array));
#endregion

#region ///array_combine test
print_start("Array Combine TEST 1");
array_a = [0, 1, 2, 3, 4, 5];
array_b = [6, 7, 8];
print("Initial arrays: ", array_a, array_b);
print("Final Array Is: ", array_combine(array_a, array_b));

print_start("Array Combine TEST 2");
array_a = [];
array_b = [6, 7, 8];
print("Initial arrays: ", array_a, array_b);
print("Final Array Is: ", array_combine(array_a, array_b));

print_start("Array Combine TEST 3");
array_a = [0, 1, 2, 3, 4, 5];
array_b = [6, 7, 8];
array_c = [9, 10, "Hello World"];
print("Initial arrays: ", array_a, array_b, array_c);
print("Final Array Is: ", array_combine(array_a, array_c, array_b));
#endregion

#region ///array_flatten test
print_start("Array Flatten");
array = [0, 1, 2, [0, 1, 2, 3, 4, 5], 3, [[]], 4, 5];
print("Initial array: ", array);
print("Final Array Is: ", array_flatten(array));
#endregion

#region ///array_copy_deep test
print_start("Array Copy Deep");
array = [0, 1, 2, [0, 1, 2, 3, 4, 5], 3, [], [[0, 1, 2]], 4, 5];
print("Initial array: ", array);
deep_copy = array_copy_deep(array);
print("Final Array Is: ", deep_copy);
#endregion

#region //array_sort test
print_start("Array Sort TEST 1");
array = [0, 4, 5, 1, 4, 5, -4];
print("Initial array: ", array);
print("Sorted Ascending: ", array_sort(array, sort_ascending));
print("Sorted Descending: ", array_sort(array, sort_descending));

print_start("Array Sort TEST 2");
array = ["C", "Hello World", "a", "b", "Goodbye", 1];
print("Initial array: ", array);
print("Sorted Ascending: ", array_sort(array, sort_alphabetical_safe));
#endregion

#region //array_shuffle test
print_start("Array Shuffle");
array = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
print("Initial array: ", array);
array_shuffle(array)
print("Shuffled Array: ", array);
#endregion

#region ///array_filter test
print_start("Array Filter Test");
array = [0, 1, "Hello World"];
print("Initial array: ", array);
print("Filtered Array for Even: ", array_filter(array, filter_is_even_safe));
print("Filtered Array for Strings: ", array_filter(array, filter_is_string_safe));
print("Reprinting Initial Array: ", array);
#endregion

#region ///array_for_each test
print_start("Array For Each Test");
array = [0, 1, 2];
print("Initial array: ", array);
array_for_each(array, add_five_test, []);
print("After Adding 5: ", array);
array_for_each(array, add_n_test, [1])
print("After adding n (where n is one): ", array);
#endregion

#region ///array_for_each_copy test
print_start("Array Fore Each Copy Test");
array = [0, 1, 2];
print("Initial array: ", array);
map_1 = array_for_each_copy(array, add_five_test, []);
print("After Adding 5: ", map_1);
map_2 = array_for_each_copy(array, add_n_test, [1])
print("After adding n (where n is one): ", map_2);
print("Reprint Initial array: ", array);
#endregion

#region ///array_to_list_shallow and list_to_array_shallow test
print_start("Array to List Shallow TEST");
array = [0, 1, "Hello World"];
list = array_to_list_shallow(array);
print("Initial array: ", array);
print("New List: ", list[| 0], list[| 1], list[| 2]);
ds_list_add(list, 2, 3, 4, 5);
array_from_list = list_to_array_shallow(list);
print("Array from List: ", array_from_list);
#endregion

#region ///array_to_list_deep test
print_start("Array to List Deep TEST");
array = [0, 1, ["Hello World", "Goodbye"]];
list = array_to_list_deep(array);
print("Initial array: ", array);
var sub_list = list[| 2];
print("New List: ", list[| 0], list[| 1], sub_list[| 0], sub_list[| 1]);
#endregion

#region ///array_equals_deep test
print_start("Array Equals Deep TEST");
array_a = [0, 1, ["Hello World", "Goodbye"]];
array_b = [0, 1, ["Hello World", "Goodbye"]];
array_c = [0, 1, ["Hello World", "Hi"]];
print("Initial arrays: ", array_a, array_b);
print("Do Arrays A and B Equal Each Other? ", array_equals_deep(array_a, array_b));
print("Do Arrays A and C Equal Each Other? ", array_equals_deep(array_a, array_c));
#endregion


#endregion

//end debug messages
print();
print_end();
	
//end game
game_end();