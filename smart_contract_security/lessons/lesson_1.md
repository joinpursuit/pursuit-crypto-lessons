## Lesson 2: Common Smart Contract Vulnerabilities

### Overview

In this lesson, we will explore common vulnerabilities in smart contracts that attackers often exploit. Understanding these vulnerabilities is key to developing secure smart contracts and protecting decentralized applications from attacks.

## Reentrancy

Reentrancy is a vulnerability that occurs when a smart contract's function is called recursively before the previous invocation of the function has completed. This can lead to unexpected behavior, such as the manipulation of contract state and the unauthorized withdrawal of funds.


### Integer Overflow and Underflow

Integer overflow and underflow occur when a variable's value exceeds its maximum or minimum limit, causing it to wrap around to an unintended value. This can lead to unexpected behavior in smart contracts, such as the manipulation of token balances or the bypassing of access controls.

## Race Conditions

Race conditions occur when the behavior of a smart contract depends on the relative timing of events, such as external calls or transactions. Attackers can exploit race conditions to manipulate contract state, interfere with intended functionality, or gain unauthorized access to resources.

## Timestamp Dependency

Smart contracts that rely on timestamps for critical functionality, such as random number generation or time-based access control, can be vulnerable to manipulation by miners who can influence block timestamps. This can lead to unpredictable behavior and potential exploits.

## Front-Running

Front-running is a type of attack where an attacker observes a pending transaction and then submits their own transaction with a higher gas price, causing it to be mined before the original transaction. This can be used to manipulate prices on decentralized exchanges or disrupt other smart contract functionality.

## Conclusion

Understanding these common smart contract vulnerabilities and their potential consequences is crucial for developing secure decentralized applications. In the next lesson, we will cover secure coding practices that help mitigate these vulnerabilities and protect smart contracts from exploits.
