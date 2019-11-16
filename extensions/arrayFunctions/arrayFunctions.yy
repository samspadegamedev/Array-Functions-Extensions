{
    "id": "df02338e-cf32-4154-8c09-02c08d2e4319",
    "modelName": "GMExtension",
    "mvc": "1.2",
    "name": "arrayFunctions",
    "IncludedResources": [
        
    ],
    "androidPermissions": [
        
    ],
    "androidProps": false,
    "androidactivityinject": "",
    "androidclassname": "",
    "androidinject": "",
    "androidmanifestinject": "",
    "androidsourcedir": "",
    "author": "",
    "classname": "",
    "copyToTargets": -1,
    "date": "2019-18-13 09:11:45",
    "description": "",
    "exportToGame": true,
    "extensionName": "",
    "files": [
        {
            "id": "b198b8ad-c081-4462-b6d2-f730e8b31ff5",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "arrayFunctions.gml",
            "final": "",
            "functions": [
                {
                    "id": "e5be9764-5e70-4306-b06b-28910f3edf41",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "array_add_to_end",
                    "help": "array_add_to_end(array, val1 [, val2, ... max_val])",
                    "hidden": false,
                    "kind": 2,
                    "name": "array_add_to_end",
                    "returnType": 2
                },
                {
                    "id": "d45696df-dcbd-4207-8edf-29cccff9c576",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "array_valid_index",
                    "help": "array_valid_index(array, index)",
                    "hidden": false,
                    "kind": 2,
                    "name": "array_valid_index",
                    "returnType": 2
                },
                {
                    "id": "0709b13e-f6c1-4371-a656-3560c5a798cd",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        2,
                        2,
                        2
                    ],
                    "externalName": "array_swap_positions",
                    "help": "array_swap(array, pos_1, pos_2)",
                    "hidden": false,
                    "kind": 2,
                    "name": "array_swap_positions",
                    "returnType": 2
                },
                {
                    "id": "7c5880dd-3c63-4a9b-b9a8-8650288a82f4",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        2
                    ],
                    "externalName": "array_copy_shallow",
                    "help": "array_copy_shallow(array)",
                    "hidden": false,
                    "kind": 2,
                    "name": "array_copy_shallow",
                    "returnType": 2
                },
                {
                    "id": "5fe9fead-d62b-4651-bf0e-cb1fb5d2bf71",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        2
                    ],
                    "externalName": "array_copy_deep",
                    "help": "array_copy_deep(array)",
                    "hidden": false,
                    "kind": 2,
                    "name": "array_copy_deep",
                    "returnType": 2
                },
                {
                    "id": "51d45cb8-4441-4a67-b8ed-28cb93c882e4",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "array_insert",
                    "help": "array_insert(array, position, val1 [, val2, ... max_val])",
                    "hidden": false,
                    "kind": 2,
                    "name": "array_insert",
                    "returnType": 2
                },
                {
                    "id": "6fbb2b71-45a0-4239-9891-ff98aae3921d",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        2,
                        2,
                        2
                    ],
                    "externalName": "array_delete",
                    "help": "array_delete(id, position, amount)",
                    "hidden": false,
                    "kind": 2,
                    "name": "array_delete",
                    "returnType": 2
                },
                {
                    "id": "9e2df9f8-41c5-44f5-bad6-127099a191c6",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "array_splice",
                    "help": "array_splice(array, position, amount_to_delete, val1 [, val2, ... max_val])",
                    "hidden": false,
                    "kind": 2,
                    "name": "array_splice",
                    "returnType": 2
                },
                {
                    "id": "58ee25a0-50ba-4f13-9084-bc962f607540",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "array_join",
                    "help": "array_join(...arrays)",
                    "hidden": false,
                    "kind": 2,
                    "name": "array_join",
                    "returnType": 2
                },
                {
                    "id": "3e39df2e-92fb-45de-9e36-ac4a88ac1e49",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        2
                    ],
                    "externalName": "list_to_array_shallow",
                    "help": "ist_to_array_shallow(list)",
                    "hidden": false,
                    "kind": 2,
                    "name": "list_to_array_shallow",
                    "returnType": 2
                },
                {
                    "id": "375d197a-6c77-4d24-b5f1-7ea7c352fccc",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        2
                    ],
                    "externalName": "array_to_list_shallow",
                    "help": "array_to_list_shallow(array)",
                    "hidden": false,
                    "kind": 2,
                    "name": "array_to_list_shallow",
                    "returnType": 2
                },
                {
                    "id": "b8d38b6d-58d1-4b9d-8e4f-c27463ee2325",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        2
                    ],
                    "externalName": "array_to_list_deep",
                    "help": "array_to_list_deep(array)",
                    "hidden": false,
                    "kind": 2,
                    "name": "array_to_list_deep",
                    "returnType": 2
                },
                {
                    "id": "07c2709f-5be4-40fe-bb44-d620b04c40ca",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "array_equals_deep",
                    "help": "array_equals_deep(array, array)",
                    "hidden": false,
                    "kind": 2,
                    "name": "array_equals_deep",
                    "returnType": 2
                },
                {
                    "id": "95f8a56e-dff3-45ac-991c-67e129c6c579",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "array_find_index",
                    "help": "array_find_index(array, value)",
                    "hidden": false,
                    "kind": 2,
                    "name": "array_find_index",
                    "returnType": 2
                },
                {
                    "id": "ca8447c6-4e8e-4d5b-8e06-9880a18ada41",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "array_find_index_all",
                    "help": "array_find_index_all(array, value)",
                    "hidden": false,
                    "kind": 2,
                    "name": "array_find_index_all",
                    "returnType": 2
                },
                {
                    "id": "f271c2a4-6582-4e9e-b699-2b1c0010ee79",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        2
                    ],
                    "externalName": "array_flatten",
                    "help": "array_flatten(array)",
                    "hidden": false,
                    "kind": 2,
                    "name": "array_flatten",
                    "returnType": 2
                },
                {
                    "id": "582b414e-30d4-4b4a-97e5-7c95bc8a7e28",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "array_sort",
                    "help": "array_sort(array, sorting_script)",
                    "hidden": false,
                    "kind": 2,
                    "name": "array_sort",
                    "returnType": 2
                },
                {
                    "id": "42453927-1907-4385-92c9-f0f11935e1a1",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        2
                    ],
                    "externalName": "array_shuffle",
                    "help": "array_shuffle(array)",
                    "hidden": false,
                    "kind": 2,
                    "name": "array_shuffle",
                    "returnType": 2
                },
                {
                    "id": "42dca1d6-6fa6-4ef7-a4b6-54c8f86a4b92",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "array_filter",
                    "help": "array_filter(array, script, [script_arguments_array])",
                    "hidden": false,
                    "kind": 2,
                    "name": "array_filter",
                    "returnType": 2
                },
                {
                    "id": "814fce20-8b34-41a5-b182-f40094149bdd",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "array_for_each",
                    "help": "array_for_each(array, script, [script_arguments_array])",
                    "hidden": false,
                    "kind": 2,
                    "name": "array_for_each",
                    "returnType": 2
                },
                {
                    "id": "2a31c0e9-238e-4893-ab93-9beacff53514",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "array_for_each_copy",
                    "help": "array_for_each_copy(array, script, [script_arguments_array])",
                    "hidden": false,
                    "kind": 2,
                    "name": "array_for_each_copy",
                    "returnType": 2
                },
                {
                    "id": "9b5dbdef-83a8-4b33-9962-c00a5be88055",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "array_combine_strings",
                    "help": "array_combine_strings(arrays, [seperator])",
                    "hidden": false,
                    "kind": 2,
                    "name": "array_combine_strings",
                    "returnType": 1
                },
                {
                    "id": "f9b221c6-6c4f-4cbf-aaee-a1cc629691ec",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "array_find_index_last",
                    "help": "array_find_index_last(array, value)",
                    "hidden": false,
                    "kind": 2,
                    "name": "array_find_index_last",
                    "returnType": 2
                },
                {
                    "id": "739c45f5-a0a6-42b7-9dc4-a1be18ff9069",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "array_find_index_custom",
                    "help": "array_find_index_custom(array, script, [...script_arguments_array])",
                    "hidden": false,
                    "kind": 2,
                    "name": "array_find_index_custom",
                    "returnType": 2
                },
                {
                    "id": "4823e7eb-7f09-49e4-9ee5-4b0d3ff8a374",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "array_find_index_last_custom",
                    "help": "array_find_index_last_custom(array, script, [...script_arguments_array])",
                    "hidden": false,
                    "kind": 2,
                    "name": "array_find_index_last_custom",
                    "returnType": 2
                },
                {
                    "id": "4e2cc07c-70c7-4422-a6ab-f2adcb5e945e",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "array_find_index_all_custom",
                    "help": "array_find_index_all_custom(array, script, [...script_arguments_array])",
                    "hidden": false,
                    "kind": 2,
                    "name": "array_find_index_all_custom",
                    "returnType": 2
                },
                {
                    "id": "8415b407-3f75-4e4b-8f53-9f0d91f1a881",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "array_every",
                    "help": "array_every(array, script, [...script_arguments_array])",
                    "hidden": false,
                    "kind": 2,
                    "name": "array_every",
                    "returnType": 2
                },
                {
                    "id": "704011c7-4b0f-4ec8-bbc5-807a3b113f21",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "array_some",
                    "help": "array_some(array, script, [...script_arguments_array])",
                    "hidden": false,
                    "kind": 2,
                    "name": "array_some",
                    "returnType": 2
                },
                {
                    "id": "5a3e3727-4af9-4503-856a-0c8d06cdac44",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "array_reduce",
                    "help": "array_reduce(array, script, [script_arguments_array])",
                    "hidden": false,
                    "kind": 2,
                    "name": "array_reduce",
                    "returnType": 2
                },
                {
                    "id": "356131c8-0bbd-45db-bb76-1ae529671069",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        2
                    ],
                    "externalName": "array_reverse",
                    "help": "array_reverse(array)",
                    "hidden": false,
                    "kind": 2,
                    "name": "array_reverse",
                    "returnType": 2
                }
            ],
            "init": "",
            "kind": 2,
            "order": [
                "d45696df-dcbd-4207-8edf-29cccff9c576",
                "0709b13e-f6c1-4371-a656-3560c5a798cd",
                "7c5880dd-3c63-4a9b-b9a8-8650288a82f4",
                "5fe9fead-d62b-4651-bf0e-cb1fb5d2bf71",
                "e5be9764-5e70-4306-b06b-28910f3edf41",
                "51d45cb8-4441-4a67-b8ed-28cb93c882e4",
                "6fbb2b71-45a0-4239-9891-ff98aae3921d",
                "9e2df9f8-41c5-44f5-bad6-127099a191c6",
                "58ee25a0-50ba-4f13-9084-bc962f607540",
                "9b5dbdef-83a8-4b33-9962-c00a5be88055",
                "3e39df2e-92fb-45de-9e36-ac4a88ac1e49",
                "375d197a-6c77-4d24-b5f1-7ea7c352fccc",
                "b8d38b6d-58d1-4b9d-8e4f-c27463ee2325",
                "07c2709f-5be4-40fe-bb44-d620b04c40ca",
                "f271c2a4-6582-4e9e-b699-2b1c0010ee79",
                "95f8a56e-dff3-45ac-991c-67e129c6c579",
                "f9b221c6-6c4f-4cbf-aaee-a1cc629691ec",
                "739c45f5-a0a6-42b7-9dc4-a1be18ff9069",
                "4823e7eb-7f09-49e4-9ee5-4b0d3ff8a374",
                "ca8447c6-4e8e-4d5b-8e06-9880a18ada41",
                "4e2cc07c-70c7-4422-a6ab-f2adcb5e945e",
                "8415b407-3f75-4e4b-8f53-9f0d91f1a881",
                "704011c7-4b0f-4ec8-bbc5-807a3b113f21",
                "42dca1d6-6fa6-4ef7-a4b6-54c8f86a4b92",
                "5a3e3727-4af9-4503-856a-0c8d06cdac44",
                "582b414e-30d4-4b4a-97e5-7c95bc8a7e28",
                "42453927-1907-4385-92c9-f0f11935e1a1",
                "814fce20-8b34-41a5-b182-f40094149bdd",
                "2a31c0e9-238e-4893-ab93-9beacff53514",
                "356131c8-0bbd-45db-bb76-1ae529671069"
            ],
            "origname": "",
            "uncompress": false
        }
    ],
    "gradleinject": "",
    "helpfile": "",
    "installdir": "",
    "iosProps": false,
    "iosSystemFrameworkEntries": [
        
    ],
    "iosThirdPartyFrameworkEntries": [
        
    ],
    "iosdelegatename": "",
    "iosplistinject": "",
    "license": "",
    "maccompilerflags": "",
    "maclinkerflags": "",
    "macsourcedir": "",
    "options": null,
    "optionsFile": "options.json",
    "packageID": "",
    "productID": "",
    "sourcedir": "",
    "supportedTargets": -1,
    "tvosProps": false,
    "tvosSystemFrameworkEntries": [
        
    ],
    "tvosThirdPartyFrameworkEntries": [
        
    ],
    "tvosclassname": "",
    "tvosdelegatename": "",
    "tvosmaccompilerflags": "",
    "tvosmaclinkerflags": "",
    "tvosplistinject": "",
    "version": "0.0.1"
}