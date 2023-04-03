# Lesson 1: Setting Up Your DApp Development Environment

In order to start developing decentralized applications (DApps) on the Ethereum blockchain, we need to set up a development environment that includes the necessary tools and frameworks.

## Tools and Frameworks

Here are the tools and frameworks we'll be using:

- [Web3.js](https://web3js.readthedocs.io/en/v1.3.4/): A JavaScript library for interacting with the Ethereum blockchain.
- [Truffle](https://www.trufflesuite.com/docs/truffle/getting-started/installation): A development framework for building smart contracts and DApps.
- [Ganache](https://www.trufflesuite.com/ganache): A personal blockchain for Ethereum development.

## Installation

### Web3.js

To install Web3.js, open your terminal and run the following command:

`npm install web3`


### Truffle

To install Truffle, open your terminal and run the following command:

`npm install -g truffle`


### Ganache

To install Ganache, download the appropriate package for your operating system from the [official website](https://www.trufflesuite.com/ganache) and follow the installation instructions.

## Creating a Sample Smart Contract

To test our development environment, let's create a simple smart contract that increments a counter.

1. Open your terminal and navigate to the directory where you want to create your project.

2. Run the following command to create a new Truffle project:

`truffle init`


3. Navigate to the `contracts` directory and create a new file called `Counter.sol`.

4. Paste the following code into `Counter.sol`:

```solidity
pragma solidity ^0.8.0;

contract Counter {
    uint256 private count;

    function increment() public {
        count++;
    }

    function getCount() public view returns (uint256) {
        return count;
    }
}
```

5. Save the file and compile the smart contract by running the following command:
`truffle compile`

6.If the compilation is successful, you should see a new build directory in your project folder.
7. Open the Truffle console by running the following command:
`truffle console`
8. In the console, run the following commands to deploy the smart contract to the local Ganache blockchain:
`migrate --reset`
9. If the migration is successful, you should see the address of the deployed contract in the console.


