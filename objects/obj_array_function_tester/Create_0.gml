/// @description Function Tester


///start debug
print_start("RUNNING TESTS");
print();

///array_clear test
print_start("Array Swap");
array = [0, 1];
print("Initial array: ", array);
array_swap(array, 0, 1);
print("After Swaping: ", array);

///array_copy_simple test
print_start("Array Copy Simple");
array = [0, 1, "Hello World"];
copy = array_copy_simple(array);
print("Initial array: ", array);
print("Copied Array: ", copy);

///array_add test
print_start("Array Add");
array = [0, 1];
print("Initial array: ", array);
array_add(array, "Hello World");
print("After Adding: ", array);


///array_find_value test
print_start("Array Find Value");
array = [0, 1, "Hello World"];
print("Initial array: ", array);
print("Index of Hello Wworld is: ", array_find_value(array, "Hello World"));


print();
print_end();
	
//end game
game_end();