### Lab 1: Creating and Deploying a Simple Storage Smart Contract

In this lab, you'll be creating and deploying a simple storage smart contract using Remix IDE.

**Objective**: Create a Solidity smart contract that allows you to store and retrieve an unsigned integer value.

#### Instructions

1. Navigate to the [Remix IDE](https://remix.ethereum.org/).
2. Click the "New File" icon in the upper left corner of the "File Explorers" panel and create a new file named `SimpleStorage.sol`.
3. In `SimpleStorage.sol`, copy and paste the following Solidity code:

#### Solidity Code

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
4. In the "Solidity Compiler" panel, click the "Compile SimpleStorage.sol" button.
5. In the "Deploy & Run Transactions" panel, make sure you're connected to the JavaScript VM environment.
6. Deploy the SimpleStorage contract by clicking the "Deploy" button.
7. Interact with the deployed contract by using the set and get functions. You should be able to store and retrieve the unsigned integer value.

