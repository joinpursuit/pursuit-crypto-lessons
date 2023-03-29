# Lesson: Functions and Control Structures in Solidity

Welcome back, fellow engineers! In this lesson, we will dive deeper into functions, function types, function modifiers, and control structures (if, else, loops) in Solidity. Let's get started!

## Functions

Functions in Solidity are similar to those in other programming languages. They are declared with the `function` keyword, followed by the function name, input parameters, visibility, modifiers, return types, and the function body.

```solidity
function functionName(parameters) visibility modifier(s) returns (returnTypes) {
    // function body
}
```
## Function Visibility
Function visibility specifies who can call the function. There are four types of visibility in Solidity:

- `public`: Callable by anyone, including externally and from derived contracts.
- `external`: Callable only from external contracts or transactions.
- `internal`: Callable only from within the contract or derived contracts.
- `private`: Callable only from within the contract itself.

## Function Modifiers
Modifiers in Solidity are used to change the behavior of functions. Some common built-in modifiers include:

- `pure`: The function does not read or modify the contract state.
- `view`: The function reads the contract state but does not modify it.
- `payable`: The function can receive Ether.
Custom modifiers can also be defined to enforce specific requirements, such as access control.

```solidity
modifier onlyOwner() {
    require(msg.sender == owner, "Not the owner");
    _;
}
```

## Control Structures
Control structures in Solidity are similar to other programming languages. We'll explore if, else, and loops (for, while, do-while) in this section.

## If and Else
Conditional statements use the if and else keywords:

```solidity
if (condition) {
    // code to execute if condition is true
} else {
    // code to execute if condition is false
}

```
## Loops 
Solidity supports three types of loops: for, while, and do-while.
For 
```solidity
for (initialization; condition; iteration) {
    // code to be executed repeatedly
}
``` 

While Loop
```solidity
while (condition) {
    // code to be executed repeatedly
}
```

Do While
```solidity
do {
    // code to be executed at least once
} while (condition);
```




