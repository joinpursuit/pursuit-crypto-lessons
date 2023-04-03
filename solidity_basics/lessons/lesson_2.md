# Solidity Data Types and Variables

In this lesson, we will cover the fundamental data types and variables in Solidity, a programming language used to write smart contracts on the Ethereum blockchain.

## Basic Data Types

Solidity supports several basic data types, including:

- `bool`: a boolean value that can be either `true` or `false`.
- `uint`: an unsigned integer, which can be of various sizes (`uint8`, `uint16`, `uint32`, etc.).
- `int`: a signed integer, which can be of various sizes (`int8`, `int16`, `int32`, etc.).
- `address`: a 20-byte value that represents an Ethereum address.
- `bytes`: a dynamic byte array.

## Arrays

Solidity also supports arrays, which can be either fixed-size or dynamic. Here are some examples:

```solidity
uint[5] fixedArray; // a fixed-size array of 5 unsigned integers
uint[] dynamicArray; // a dynamic array of unsigned integers
```

## Struct
Structs are custom data types that can be defined by the programmer. Here's an example:

```solidity
struct Person {
    string name;
    uint age;
}
```

## Enum
Enums are used to define a set of named constants. Here's an example:
```solidity
enum Color {
    Red,
    Green,
    Blue
}
```

## Global Variables 
Solidity also includes several global variables, including:
- `msg.sender`: the address of the account that sent the current transaction.
- `msg.value` : the amount of Ether sent with the current transaction.
- `block.number` : the current block number.
- `block.timestamp` : the current block timestamp.
