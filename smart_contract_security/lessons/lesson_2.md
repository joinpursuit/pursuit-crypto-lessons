### Lesson: Secure Coding Practices

In this lesson, we will cover several secure coding practices that can help prevent vulnerabilities and improve the overall security of your smart contracts. By implementing these practices, you can reduce the risk of attacks and ensure the safety of your decentralized applications.

#### Input Validation

Input validation is the process of checking the validity of user inputs before using them in your smart contract. This helps prevent unexpected behavior and can mitigate the risk of certain attacks.

```solidity
pragma solidity ^0.6.0;

contract InputValidation {
    uint256 public maxValue;

    // Validate the input to ensure it is within the acceptable range
    function setMaxValue(uint256 newValue) external {
        require(newValue > 0, "Value must be greater than 0.");
        require(newValue <= 100, "Value must be less than or equal to 100.");

        maxValue = newValue;
    }
}
```

#### Access Control
Access control is the practice of restricting access to sensitive operations in your smart contract. This can help prevent unauthorized users from performing certain actions.

```solidity
pragma solidity ^0.6.0;

contract AccessControl {
    address public owner;

    constructor() public {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Caller is not the owner.");
        _;
    }

    function sensitiveOperation() external onlyOwner {
        // Perform a sensitive operation
    }
}
```

#### Error Handling
Error handling involves checking for potential errors or issues and handling them appropriately. This can help prevent unexpected behavior and improve the overall security of your smart contract.

```solidity
pragma solidity ^0.6.0;

contract ErrorHandling {
    mapping(address => uint256) public balances;

    function deposit() external payable {
        require(msg.value > 0, "Deposit amount must be greater than 0.");

        balances[msg.sender] += msg.value;
    }

    function withdraw(uint256 amount) external {
        require(amount > 0, "Withdrawal amount must be greater than 0.");
        require(balances[msg.sender] >= amount, "Insufficient balance.");

        (bool success, ) = msg.sender.call{value: amount}("");
        require(success, "Transfer failed.");

        balances[msg.sender] -= amount;
    }
}
```

#### Pull Payment Pattern
The pull payment pattern involves allowing users to withdraw their funds instead of directly sending the funds to them. This can help prevent reentrancy attacks and make your smart contract more secure.
```solidity
pragma solidity ^0.6.0;

contract PullPayment {
    mapping(address => uint256) public pendingWithdrawals;

    function deposit() external payable {
        // Store the deposit amount in the pendingWithdrawals mapping
        pendingWithdrawals[msg.sender] += msg.value;
    }

    function withdraw() external {
        uint256 amount = pendingWithdrawals[msg.sender];

        // Check for reentrancy and reset the pending withdrawal amount before transferring the funds
        pendingWithdrawals[msg.sender] = 0;

        (bool success, ) = msg.sender.call{value: amount}("");
        require(success, "Transfer failed.");
    }
}
```

