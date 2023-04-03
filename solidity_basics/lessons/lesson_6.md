# Lesson: Libraries and Using in Solidity

In this lesson, we will explore libraries and the `using` keyword in Solidity. We'll cover how to create custom libraries, how to use existing libraries, and the benefits of using libraries in your smart contracts.

## Libraries

Libraries in Solidity are contracts that contain reusable code. They can be used to modularize your code and reduce the gas cost of deploying a contract. Libraries cannot have state variables or inherit from other contracts. You can think of libraries as collections of pure functions that operate on input data.

### Example: Simple Library

```solidity
pragma solidity ^0.8.0;

library Math {
    function add(uint256 a, uint256 b) public pure returns (uint256) {
        return a + b;
    }

    function sub(uint256 a, uint256 b) public pure returns (uint256) {
        require(b <= a, "Subtraction overflow");
        return a - b;
    }
}
```
In this example, we declare a simple library called Math with two functions, add and `sub`.

### `Using` Keyword
The `using` keyword in Solidity allows you to attach library functions to specific types. When a library is attached to a type, you can call the library functions as if they were methods of that type.

Example: Using a Library
```solidity
pragma solidity ^0.8.0;

import "./Math.sol";

contract Calculator {
    using Math for uint256;

    function add(uint256 a, uint256 b) public pure returns (uint256) {
        return a.add(b);
    }

    function sub(uint256 a, uint256 b) public pure returns (uint256) {
        return a.sub(b);
    }
}

```
In this example, we import the Math library and use the using keyword to attach the library to the uint256 type. This allows us to call the add and sub functions as if they were methods of the uint256 type.
