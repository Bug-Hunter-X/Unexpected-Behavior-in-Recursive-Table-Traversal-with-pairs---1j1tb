# Lua Recursive Table Traversal Bug

This repository demonstrates a common, yet subtle bug in Lua related to the use of `pairs` for iterating over tables, especially when dealing with recursive table traversals. The bug arises due to `pairs` iterator not guaranteeing any specific order of iteration, which can lead to unpredictable outcomes if modifications to the table occur during the traversal.

## Bug Description
The `bug.lua` file contains a function `foo` that recursively iterates over a nested table using `pairs`.  However, if the table structure is modified during iteration, the results might be unexpected because the order of keys returned by `pairs` is not stable. 

## Solution
The `bugSolution.lua` file demonstrates a way to mitigate this issue by creating a copy of the table before iteration, ensuring the iteration order is unaffected by any subsequent table modifications within the loop.

## How to Reproduce
1. Clone this repository.
2. Run `bug.lua`. The expected output is 3, but the order of iteration can lead to different outputs in the case of deep nesting.
3. Run `bugSolution.lua`. This version should always produce the correct output 3.