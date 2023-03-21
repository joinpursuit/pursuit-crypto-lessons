### Lesson 1: Introduction to Solidity

#### What is Solidity?
Solidity is a statically-typed, contract-oriented programming language designed for writing smart contracts on the Ethereum blockchain. It is influenced by languages like C++, Python, and JavaScript.

#### Development Tools and Environment Setup
- Remix IDE: A web-based integrated development environment (IDE) for writing, testing, and deploying Solidity smart contracts.
- Visual Studio Code: A popular code editor with extensions for Solidity, such as the Solidity extension by Juan Blanco.
- Truffle: A development framework for Ethereum that simplifies the development, testing, and deployment of smart contracts.
- Ganache: A personal Ethereum blockchain for development and testing purposes.
- Hardhat: A development environment for compiling, testing, and deploying Ethereum smart contracts.

#### Structure of a Smart Contract
A smart contract in Solidity typically contains the following components:
- Contract definition: `contract ContractName {}`
- State variables: Variables that represent the contract's state and persist between function calls.
- Functions: Pieces of code that define the contract's behavior.
- Events: Logging mechanisms that allow monitoring of contract activity.
- Modifiers: Conditions that must be met before a function can be executed.

Example of a simple Solidity smart contract:
```solidity
// Specify the Solidity compiler version
pragma solidity ^0.8.0;

// Define the smart contract
contract SimpleStorage {
    // Declare a state variable
    uint256 private data;

    // Define a function to set the value of the state variable
    function set(uint256 _data) public {
        data = _data;
    }

    // Define a view function to read the value of the state variable
    function get() public view returns (uint256) {
        return data;
    }
}
```

### Lab 1: Creating and Deploying a Simple Storage Smart Contract

In this lab, you'll be creating and deploying a simple storage smart contract using Remix IDE.

**Objective**: Create a Solidity smart contract that allows you to store and retrieve an unsigned integer value.

**Instructions**:

1. Navigate to the [Remix IDE](https://remix.ethereum.org/).
2. Click the "New File" icon in the upper left corner of the "File Explorers" panel and create a new file named `SimpleStorage.sol`.
3. In `SimpleStorage.sol`, copy and paste the following Solidity code:

```solidity
pragma solidity ^0.8.0;

contract SimpleStorage {
    uint256 private data;

    function set(uint256 _data) public {
        data = _data;
    }

    function get() public view returns (uint256) {
        return data;
    }
}
```
In the "Solidity Compiler" panel, click the "Compile SimpleStorage.sol" button.
In the "Deploy & Run Transactions" panel, make sure you're connected to the JavaScript VM environment.
Deploy the SimpleStorage contract by clicking the "Deploy" button.
Interact with the deployed contract by using the set and get functions. You should be able to store and retrieve the unsigned integer value.
Deliverable: Share your SimpleStorage.sol file and a screenshot of your interaction with the contract in Remix IDE.
