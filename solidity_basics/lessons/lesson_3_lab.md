# Lab: Functions and Control Structures in Solidity

In this lab, we will practice using functions, function visibility, modifiers, and control structures in Solidity. Follow the instructions and complete the exercises below.

## Exercise 1: Simple Arithmetic Functions

1. Create a new Solidity contract called `Arithmetic` with the appropriate pragma and contract declaration.
2. Declare a `public` function called `add` that takes two `uint256` arguments and returns their sum as a `uint256`.
3. Declare a `public` function called `subtract` that takes two `uint256` arguments and returns their difference as a `uint256`.

## Exercise 2: Access Control

1. Add a state variable called `owner` of type `address` to the `Arithmetic` contract.
2. Create a constructor that sets the `owner` state variable to `msg.sender`.
3. Create a custom modifier called `onlyOwner` that checks if `msg.sender` is equal to `owner`. If not, revert with an error message "Not the owner".
4. Modify the `subtract` function to use the `onlyOwner` modifier.

## Exercise 3: Control Structures

1. Add a `public` function called `sumArray` to the `Arithmetic` contract. This function should take an array of `uint256` as an argument and return the sum of all elements in the array.
2. Implement the `sumArray` function using a `for` loop to iterate through the input array and calculate the sum.

Here's a template to get you started:

```solidity
pragma solidity ^0.8.0;

contract Arithmetic {
    // State variables, constructor, and modifier go here

    function add(uint256 a, uint256 b) public pure returns (uint256) {
        // Implement the add function
    }

    function subtract(uint256 a, uint256 b) public onlyOwner returns (uint256) {
        // Implement the subtract function
    }

    function sumArray(uint256[] memory numbers) public pure returns (uint256) {
        // Implement the sumArray function
    }
}
