# Perl exists() function: Unexpected behavior with undef values

This example demonstrates a potential issue with Perl's `exists()` function.  The function correctly checks if a key exists within a hash, however it doesn't differentiate between a key with a defined value and a key with an undefined value.  This can lead to unexpected program flow.

## Bug Description
The `exists()` function in Perl returns true if a key exists in a hash, regardless of whether the value associated with that key is defined or undefined.  This behavior is different than what many programmers would intuitively expect.

## How to Reproduce
1. Run the Perl script `bug.pl`.
2. Observe that the output indicates that the key 'd' does not exist, even though `exists $hash{'d'}` would return true if 'd' had been previously assigned a value of undef. 

## Solution
The solution involves using the defined() function in conjunction with exists() to ensure that not only does the key exist but also that it has a defined value.  This provides more robust key checking.
