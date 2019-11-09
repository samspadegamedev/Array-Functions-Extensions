/// @description Function Tester


//start debug messages
print_start("RUNNING TESTS");
print();


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

#region ///array_find_value test
print_start("Array Find Value TEST 1");
array = [0, 1, "Hello World", 2, 3, 4, 5];
print("Initial array: ", array);
print("Index of Hello World is: ", array_find_value(array, "Hello World"));
print("Index of Goodbye is: ", array_find_value(array, "Goodbye"));

print_start("Array Find Value TEST 2");
array = [];
print("Initial array: ", array);
print("Index of Hello World is: ", array_find_value(array, "Hello World"));
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
print("Filtered Array for Even: ", array_filter(array, is_even));
print("Filtered Array for Strings: ", array_filter(array, is_string_test));
#endregion


//end debug messages
print();
print_end();
	
//end game
game_end();