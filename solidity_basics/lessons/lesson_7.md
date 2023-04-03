# Lesson: Access Control and Multi-signature Wallets in Solidity

In this lesson, we will explore access control patterns and multi-signature wallets in Solidity. We'll cover the Ownable and Role-based access control patterns and learn how to implement a multi-signature wallet.

## Access Control Patterns

Access control patterns are crucial for securing your smart contracts. They restrict access to sensitive functions and ensure that only authorized users can perform specific actions.

### Ownable

The Ownable pattern is a simple access control mechanism that assigns ownership to a single Ethereum address. This address has exclusive control over specific functions within the contract.

```solidity
pragma solidity ^0.8.0;

contract Ownable {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Caller is not the owner");
        _;
    }
}
```
In this example, we declare a contract called Ownable with a state variable owner and a constructor that sets the owner to the address deploying the contract. The onlyOwner modifier ensures that only the owner can call the function with this modifier.

### Role-based
Role-based access control is a more flexible approach that allows you to define multiple roles with different permissions. You can use the OpenZeppelin library to implement role-based access control easily.

```solidity 
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/access/AccessControl.sol";

contract RoleBased is AccessControl {
    bytes32 public constant MANAGER_ROLE = keccak256("MANAGER_ROLE");

    constructor() {
        _setupRole(MANAGER_ROLE, msg.sender);
    }

    modifier onlyManager() {
        require(hasRole(MANAGER_ROLE, msg.sender), "Caller is not a manager");
        _;
    }
}
```
In this example, we use the `AccessControl` contract from the OpenZeppelin library to implement a role-based access control pattern. We define a MANAGER_ROLE and assign it to the contract deployer in the constructor.

### Multi-signature Wallet
A multi-signature wallet is a smart contract that requires multiple signatures (from different addresses) to execute specific functions. This pattern increases security and reduces the risk of a single point of failure.

```solidity 
pragma solidity ^0.8.0;

contract MultiSigWallet {
    address[] public owners;
    uint256 public required;

    constructor(address[] memory _owners, uint256 _required) {
        owners = _owners;
        required = _required;
    }

    // Implementation of multi-signature wallet functions
}
```
In this example, we declare a contract called MultiSigWallet with an array of owners and a required number of signatures. The constructor takes an array of owner addresses and the number of required signatures as arguments.

