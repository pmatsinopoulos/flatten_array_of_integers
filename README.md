Implement Array#flatten for Integers without using flatten.

The function developed is called `flatten_aoi_recursive`:

Input param +array+ is an Array that contains elements which are:

1. Integer
2. Array of Integer

It returns an Array with all the integers. Basically does what #flatten does.
Note that the implementation is a recursive implementation.
If an element is an Integer, we just push it to the +result+ Array.
If the element is an Array, we flatten it and then we push each one of its
elements to the +result+ Array.
