/// @description Function Tester


//start debug messages
print_start("RUNNING TESTS");
print();


#region ///array_clear test
print_start("Array Swap");
array = [0, 1];
print("Initial array: ", array);
array_swap(array, 0, 1);
print("After Swaping: ", array);
#endregion

#region ///array_copy_simple test
print_start("Array Copy Simple");
array = [0, 1, "Hello World"];
copy = array_copy_simple(array);
print("Initial array: ", array);
print("Copied Array: ", copy);
#endregion

#region ///array_add test
print_start("Array Add");
array = [0, 1];
print("Initial array: ", array);
array_add(array, "Hello World");
print("After Adding: ", array);
#endregion

#region ///array_delete test
print_start("Array Delete");
array = [0, 1, "Hello World"];
print("Initial array: ", array);
array = array_delete(array, 0, 2);
print("After Deleting: ", array);
#endregion

#region ///array_find_value test
print_start("Array Find Value");
array = [0, 1, "Hello World"];
print("Initial array: ", array);
print("Index of Hello World is: ", array_find_value(array, "Hello World"));
#endregion

#region ///array_reduce test
print_start("Array Reduce");
array = [0, 1, 2, 3, 4, 5];
print("Initial array: ", array);
print("Accumulated Value is: ", array_reduce(array));
#endregion

#region ///array_reduce_right test
print_start("Array Reduce Right");
array = [0, 1, 2, 3, 4, 5];
print("Initial array: ", array);
print("Accumulated Value is: ", array_reduce_right(array));
#endregion

#region ///array_concat test
print_start("Array Concat");
array_a = [0, 1, 2, 3, 4, 5];
array_b = [0, 1, 2, 3, 4, 5];
print("Initial arrays: ", array_a, array_b);
print("Final Array Is: ", array_concat(array_a, array_b));
#endregion

#region ///array_flatten test
print_start("Array Flatten");
array = [0, 1, 2, [0, 1, 2, 3, 4, 5], 3, [[]], 4, 5];
print("Initial array: ", array);
print("Final Array Is: ", array_flatten(array));
#endregion

#region ///array_clone test
print_start("Array Clone");
array = [0, 1, 2, [0, 1, 2, 3, 4, 5], 3, [[]], 4, 5];
print("Initial array: ", array);
clone = array_clone(array);
print("Final Array Is: ", clone);
#endregion



//end debug messages
print();
print_end();
	
//end game
game_end();