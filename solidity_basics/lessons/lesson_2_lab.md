## Introduction

In this lab, you will apply your knowledge of Solidity data types and variables to create a simple smart contract.

## Requirements

- Basic understanding of Solidity data types and variables
- Access to a Solidity compiler and Ethereum network

## Instructions

1. Create a new Solidity file in your preferred code editor.
2. Define a struct called `Person` with the following properties:
   - `name`: a string representing the person's name.
   - `age`: an unsigned integer representing the person's age.
3. Create a new contract called `MyContract`.
4. Define a global variable called `myPerson` that is of type `Person`.
5. Create a function called `setPerson` that takes two arguments:
   - `name`: a string representing the person's name.
   - `age`: an unsigned integer representing the person's age.
   This function should set the `myPerson` variable to a new `Person` instance with the provided `name` and `age`.
6. Create a function called `getPerson` that returns a tuple with two values:
   - `name`: a string representing the person's name.
   - `age`: an unsigned integer representing the person's age.
   This function should return the values of the `myPerson` variable.
7. Compile your Solidity file and deploy your smart contract to the Ethereum network.
8. Test your smart contract by calling the `setPerson` and `getPerson` functions with different values.
