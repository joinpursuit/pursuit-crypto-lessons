# Lesson: Inheritance and Interfaces in Solidity

In this lesson, we will explore inheritance and interfaces in Solidity. We'll cover contract inheritance, interfaces, and abstract contracts, as well as how to use them effectively in your smart contracts.

## Contract Inheritance

Contract inheritance allows a contract to inherit properties and functions from other contracts. It's a powerful way to create reusable and modular code. Solidity uses the `is` keyword to denote inheritance.

### Example: Simple Inheritance

```solidity
pragma solidity ^0.8.0;

contract A {
    function foo() public pure returns (string memory) {
        return "A";
    }
}

contract B is A {
    function bar() public pure returns (string memory) {
        return "B";
    }
}
```

In this example, contract B inherits from contract A. As a result, contract B has access to the foo function from contract A.

## Interfaces
Interfaces in Solidity are similar to abstract contracts, but they cannot have any implemented functions. They can only declare functions without implementation. Solidity uses the interface keyword to declare an interface.

## Example: Simple Interface
```solidity
pragma solidity ^0.8.0;

interface Token {
    function transfer(address to, uint256 amount) external returns (bool);
}
```
In this example, we declare an interface called Token with a single function transfer. This interface can be used to interact with any contract that implements the transfer function with the specified signature.

## Abstract Contracts
Abstract contracts are similar to interfaces but can have partially implemented functions. They cannot be deployed on their own and must be inherited by a child contract. Solidity uses the abstract keyword to declare an abstract contract.

### Example: Simple Abstract Contract
```solidity 
pragma solidity ^0.8.0;

abstract contract A {
    function foo() public pure virtual returns (string memory);

    function bar() public pure returns (string memory) {
        return "A";
    }
}

contract B is A {
    function foo() public pure override returns (string memory) {
        return "B";
    }
}
```
In this example, contract A is an abstract contract with a virtual function foo and an implemented function bar. Contract B inherits from A and provides an implementation for the foo function.

