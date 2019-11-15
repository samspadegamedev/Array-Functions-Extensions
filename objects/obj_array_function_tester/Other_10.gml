/// @description Automated Tests


#region //automated tests

#region ///array_valid_index test
array = [0, 1, 3, 4, 5];
assert(array_valid_index(array, 0), "Invalid Index");
assert(array_valid_index(array, 1), "Invalid Index");
assert(array_valid_index(array, 2), "Invalid Index");
assert(array_valid_index(array, 3), "Invalid Index");
assert(array_valid_index(array, 4), "Invalid Index");
assert_fail(array_valid_index(array, -1), "Valid Index");
assert_fail(array_valid_index(array, 1.5), "Valid Index");
assert_fail(array_valid_index(array, 5), "Valid Index");
assert_fail(array_valid_index(array, "Hello World"), "Valid Index");
assert_fail(array_valid_index(array, -1), "Valid Index");

array = [];
assert_fail(array_valid_index(array, -1), "Valid Index");
assert_fail(array_valid_index(array, 0.5), "Valid Index");
assert_fail(array_valid_index(array, 1), "Valid Index");
assert_fail(array_valid_index(array, "Hello World"), "Valid Index");
#endregion

#region ///array_get_safe test
array = ["Hello World", "Goodbye"];
assert_equal(array_get_safe(array, 0), "Hello World", "Returned undefined");
assert_equal(array_get_safe(array, 1), "Goodbye", "Returned undefined");
assert_equal(array_get_safe(array, -1), undefined, "Didn't return undefined");
assert_equal(array_get_safe(array, 1.1), undefined, "Didn't return undefined");
assert_equal(array_get_safe(array, 4), undefined, "Didn't return undefined");
assert_equal(array_get_safe(array, []), undefined, "Didn't return undefined");

array = [];
assert_equal(array_get_safe(array, 0), undefined, "Didn't return undefined");
assert_equal(array_get_safe(array, -1), undefined, "Didn't return undefined");
assert_equal(array_get_safe(array, 1.1), undefined, "Didn't return undefined");
assert_equal(array_get_safe(array, 4), undefined, "Didn't return undefined");
assert_equal(array_get_safe(array, []), undefined, "Didn't return undefined");
#endregion

#region ///array_set_safe test
array = ["Hello World", "Goodbye"];
array_set_safe(array, 0, "Test 1");
assert(array_equals(["Test 1", "Goodbye"], array), "Arrays arn't equal");
array_set_safe(array, 1, "Test 2");
assert(array_equals(["Test 1", "Test 2"], array), "Arrays arn't equal");
array_set_safe(array, 3, "Test 3");
assert(array_equals(["Test 1", "Test 2"], array), "Arrays arn't equal");
array_set_safe(array, [], "Test 3");
assert(array_equals(["Test 1", "Test 2"], array), "Arrays arn't equal");
array_set_safe(array, "Hello World", "Test 3");
assert(array_equals(["Test 1", "Test 2"], array), "Arrays arn't equal");


array = [];
array_set_safe(array, 0, "Test 1");
assert(array_equals([], array), "Arrays arn't equal");
array_set_safe(array, 1, "Test 2");
assert(array_equals([], array), "Arrays arn't equal");
array_set_safe(array, 3, "Test 3");
assert(array_equals([], array), "Arrays arn't equal");
array_set_safe(array, [], "Test 3");
assert(array_equals([], array), "Arrays arn't equal");
array_set_safe(array, "Hello World", "Test 3");
assert(array_equals([], array), "Arrays arn't equal");

#endregion

#region ///array_swap_positions test
array = [0, 1];
array_swap_positions(array, 0, 1);
assert(array_equals([1, 0], array), "Arrays arn't equal");

array = [0, [], 1];
array_swap_positions(array, 2, 1);
assert(array_equals_deep([0, 1, []], array), "Arrays arn't equal");
#endregion

#region ///array_copy_shallow test
array = [0, 1, "Hello World"];
shallow_copy = array_copy_shallow(array);
assert(array_equals(shallow_copy, array), "Arrays arn't equal");
assert(array_equals(shallow_copy, [0, 1, "Hello World"]), "Arrays arn't equal");

array = [];
shallow_copy = array_copy_shallow(array);
assert(array_equals(shallow_copy, array), "Arrays arn't equal");
assert(array_equals([], array), "Arrays arn't equal");

array = [[1, 2], [3, 4]];
shallow_copy = array_copy_shallow(array);
assert_fail(array_equals([[1, 2], [3, 4]], array), "Arrays are equal");
assert(array_equals_deep([[1, 2], [3, 4]], array), "Arrays are equal");
#endregion

#region ///array_copy_deep test
array = [0, 1, 2, [0, 1, 2, 3, 4, 5], 3, [], [[0, 1, 2]], 4, 5];
deep_copy = array_copy_deep(array);
assert(array_equals_deep(deep_copy, array), "Arrays arn't equal");
assert_fail(array_equals(deep_copy, array), "Arrays arn't equal");
#endregion

#region ///array_add test
array = [0, 1];
assert(array_equals([0, 1], array), "Arrays arn't equal");
array_add_to_end(array);
assert(array_equals([0, 1], array), "Arrays arn't equal");
array_add_to_end(array, "Hello World");
assert(array_equals([0, 1, "Hello World"], array), "Arrays arn't equal");
array_add_to_end(array, 2, 3, 4, "Goodbye");
assert(array_equals([0, 1, "Hello World", 2, 3, 4, "Goodbye"], array), "Arrays arn't equal");
#endregion

#region ///array_delete test
array = [0, 1, "Hello World"];
assert(array_equals([0, 1, "Hello World"], array), "Arrays arn't equal");
array = array_delete(array, 0, 2);
assert(array_equals(["Hello World"], array), "Arrays arn't equal");

array = [0, 1, 2, 3, 4, 5];
assert(array_equals([0, 1, 2, 3, 4, 5], array), "Arrays arn't equal");
array = array_delete(array, 5, 5);
assert(array_equals([0, 1, 2, 3, 4], array), "Arrays arn't equal");

array = [1, 2, 3, 4, 5];
assert(array_equals([1, 2, 3, 4, 5], array), "Arrays arn't equal");
array = array_delete(array, 1.5, 1);
assert(array_equals([1, 2, 4, 5], array), "Arrays arn't equal");

array = [];
array = array_delete(array, 0, 0);
assert(array_equals([], array), "Arrays arn't equal");

#endregion

#region ///array_insert test
array = [0, 1, "Hello World"];
assert(array_equals([0, 1, "Hello World"], array), "Arrays arn't equal");
array_insert(array, 0, 2);
assert(array_equals([2, 0, 1, "Hello World"], array), "Arrays arn't equal");
array_insert(array, 10, 2);
assert(array_equals([2, 0, 1, "Hello World"], array), "Arrays arn't equal");
array_insert(array, 4, "Goodbye", "Hello", 1, 2, 4);
assert(array_equals([2, 0, 1, "Hello World", "Goodbye", "Hello", 1, 2, 4], array), "Arrays arn't equal");


array = [0, 1, 2, 3, 4, 5];
assert(array_equals([0, 1, 2, 3, 4, 5], array), "Arrays arn't equal");
array_insert(array, 5, "Hello World", "Goodbye");
assert(array_equals([0, 1, 2, 3, 4, "Hello World", "Goodbye", 5], array), "Arrays arn't equal");
#endregion

#region ///array_splice test
array = [0, 1, "Hello World"];
assert(array_equals([0, 1, "Hello World"], array), "Arrays arn't equal");
array = array_splice(array, 2, 1, 2, 3, 4, 5);
assert(array_equals([0, 1, 2, 3, 4, 5], array), "Arrays arn't equal");

array = [0, 1];
array = array_splice(array, 2, 1, 2, 3, 4, 5);
assert(array_equals([0, 1, 2, 3, 4, 5], array), "Arrays arn't equal");

array = [0, 1, 2, 3, 4, 5];
assert(array_equals([0, 1, 2, 3, 4, 5], array), "Arrays arn't equal");
array = array_splice(array, 0, 6, "Hello World");
assert(array_equals(["Hello World"], array), "Arrays arn't equal");
#endregion

#region ///array_find_index test
array = [0, 1, "Hello World", 2, 3, 4, 5];
assert_equal(array_find_index(array, "Hello World"), 2);
assert_equal(array_find_index(array, "Goodbye"), -1);


array = [];
assert_equal(array_find_index(array, "Goodbye"), -1);
#endregion

#region ///array_find_index_all test
array = [0, 1, "Hello World", 1, 3, 1, 5];
assert_equal(array_find_index_all(array, 1), [1, 3, 5]);
assert_equal(array_find_index_all(array, "Hello World"), [2]);
assert_equal(array_find_index_all(array, "Goodbye"), []);


array = [];
assert_equal(array_find_index_all(array, "Hello World"), []);
#endregion

#region ///array_find_index_non_strict test
array = [0, 1, "Hello World", 2, [0, 1, 2], 4, 5];
assert_equal(array_find_index_non_strict(array, [0, 1, 2]), 4);
assert_equal(array_find_index_non_strict(array, [0, 2]), -1);


array = [];
assert_equal(array_find_index_non_strict(array, [0, 1, 2]), -1);
#endregion

#region ///array_accumulate test
array = [0, 1, 2, 3, 4, 5];
assert_equal(array_accumulate(array), 15);
array = [];
assert_equal(array_accumulate(array), 0);
#endregion

#region ///array_join test
array_a = [0, 1, 2, 3, 4, 5];
array_b = [6, 7, 8];
assert(array_equals([0, 1, 2, 3, 4, 5, 6, 7, 8], array_join(array_a, array_b)), "Arrays arn't equal");

array_a = [];
array_b = [6, 7, 8];
assert(array_equals([6, 7, 8], array_join(array_a, array_b)), "Arrays arn't equal");


array_a = [0, 1, 2, 3, 4, 5];
array_b = [6, 7, 8];
array_c = [9, 10, "Hello World"];
assert(array_equals([0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, "Hello World"], array_join(array_a, array_b, array_c)), "Arrays arn't equal"); 
assert(array_equals([9, 10, "Hello World", 0, 1, 2, 3, 4, 5, 6, 7, 8], array_join(array_c, array_a, array_b)), "Arrays arn't equal"); 

#endregion

#region ///array_flatten test
array = [0, 1, 2, [0, 1, 2, 3, 4, 5], 3, [[]], 4, 5];
assert(array_equals([0, 1, 2, 0, 1, 2, 3, 4, 5, 3, 4, 5], array_flatten(array)), "Arrays arn't equal"); 
#endregion

#region //array_sort test
array = [0, 4, 5, 1, 4, 5, -4];
assert(array_equals([-4, 0, 1, 4, 4, 5, 5], array_sort(array, sort_ascending)), "Arrays arn't equal"); 
assert(array_equals([5, 5, 4, 4, 1, 0, -4], array_sort(array, sort_descending)), "Arrays arn't equal"); 

array = ["C", "Hello World", "a", "b", "Goodbye", 1];
assert(array_equals(["a", "b", "C", "Goodbye", "Hello World", 1], array_sort(array, sort_alphabetical_safe)), "Arrays arn't equal"); 
#endregion

#region //array_shuffle test
//not sure how to test
#endregion

#region ///array_filter test
array = [0, 1, "Hello World"];
assert(array_equals([0], array_filter(array, filter_is_even_safe)), "Arrays arn't equal"); 
assert(array_equals(["Hello World"], array_filter(array, filter_is_string_safe)), "Arrays arn't equal"); 

#endregion

#region ///array_for_each test
array = [0, 1, 2];
assert(array_equals([5, 6, 7], array_for_each(array, add_five_test, [])), "Arrays arn't equal"); 
assert(array_equals([6, 7, 8], array_for_each(array, add_n_test, [1])), "Arrays arn't equal"); 
#endregion

#region ///array_for_each_copy test
array = [0, 1, 2];
map_1 = array_for_each_copy(array, add_five_test, []);
map_2 = array_for_each_copy(array, add_n_test, [1])
assert(array_equals([5, 6, 7], map_1), "Arrays arn't equal"); 
assert(array_equals([1, 2, 3], map_2), "Arrays arn't equal"); 
#endregion

#region ///array_to_list_shallow and list_to_array_shallow test
array = [0, 1, "Hello World"];
list = array_to_list_shallow(array);
ds_list_add(list, 2, 3, 4, 5);
array_from_list = list_to_array_shallow(list);
assert(array_equals([0, 1, "Hello World", 2, 3, 4, 5], array_from_list), "Arrays arn't equal"); 
#endregion

#region ///array_to_list_deep test
//not sure how to test
#endregion

#region ///array_equals_deep test
array_a = [0, 1, ["Hello World", "Goodbye"]];
array_b = [0, 1, ["Hello World", "Goodbye"]];
array_c = [0, 1, ["Hello World", "Hi"]];
assert(array_equals_deep(array_a, array_b), "Arrays arn't equal"); 
assert_fail(array_equals_deep(array_c, array_b), "Arrays are equal"); 
assert_fail(array_equals_deep(array_a, array_c), "Arrays are equal"); 
#endregion


#endregion



