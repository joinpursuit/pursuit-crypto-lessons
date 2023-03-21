# Optimism: A Layer 2 Scaling Solution for Ethereum

Optimism is a Layer 2 scaling solution for Ethereum that uses Optimistic Rollups to provide faster and cheaper transactions while maintaining compatibility with the Ethereum Virtual Machine (EVM). This technology allows developers to build and deploy applications on Optimism with minimal changes to their existing code.

## How Optimism Works

Optimism utilizes a technology called Optimistic Rollups, which bundles multiple transactions together into a single rollup block. These rollup blocks are then processed on a separate chain called the Optimistic Ethereum (OΞ) network. Optimism's smart contracts can interact with Ethereum mainnet contracts, but they benefit from the increased throughput and lower transaction fees offered by the Layer 2 solution.

Key features of Optimism include:

- Ethereum compatibility: Optimism is compatible with the EVM, enabling developers to use existing Ethereum tools, libraries, and contracts with little to no modification.
- Scalability: Optimism's Optimistic Rollups significantly increase transaction throughput, allowing for more scalable applications.
- Security: Optimism relies on Ethereum's security guarantees through a system called fraud proofs, which enables the detection and resolution of invalid transactions.
- Interoperability: Optimism allows for seamless asset transfers between the Ethereum main chain and the Optimistic Ethereum network.

## Learning Resources

To learn more about Optimism and how to build applications on the Optimistic Ethereum network, visit the official documentation:

- Optimism Documentation: [https://community.optimism.io/docs/](https://community.optimism.io/docs/)

## Activity: Interacting with the Optimism Network

In this activity, students will learn how to interact with the Optimism network using Metamask and a simple smart contract. The goal of this activity is to provide hands-on experience with Optimism's Layer 2 solution and demonstrate its benefits, such as faster transactions and lower fees.

## Prerequisites

- Basic understanding of Ethereum, smart contracts, and Solidity
- Metamask browser extension installed and set up

## Tasks

### 1. Configure Metamask for Optimism

- Visit the Optimism documentation page on configuring Metamask: [https://community.optimism.io/docs/developers/networks.html](https://community.optimism.io/docs/developers/networks.html)
- Follow the instructions to add the Optimism test network (Optimistic Kovan) to your Metamask wallet.

### 2. Obtain test ETH for the Optimism test network

- Visit the Optimism Faucet: [https://gateway.optimism.io/testnet/faucet](https://gateway.optimism.io/testnet/faucet)
- Connect your Metamask wallet to the faucet and request test ETH for the Optimistic Kovan test network.

### 3. Write a simple smart contract

- Create a new Solidity file for a simple smart contract that stores a number and allows users to update it.
- Compile the smart contract using the Solidity compiler or an online IDE, such as Remix.

### 4. Deploy the smart contract to the Optimism test network

- Use an online IDE like Remix, or a development framework like Truffle or Hardhat with the Optimism plugin, to deploy your smart contract to the Optimistic Kovan test network.
- Make sure to select the correct network (Optimistic Kovan) in Metamask when deploying the smart contract.
- Save the contract address after the deployment is complete.

### 5. Interact with the deployed smart contract

- In Remix, or using a custom frontend or script, interact with your deployed smart contract by calling its functions to store and retrieve the number.
- Observe the transaction speed and fees associated with the Optimism network compared to the Ethereum mainnet.

## Simple Solidity Smart Contract Example

Here's a basic Solidity smart contract that stores a number and allows users to update it:

```solidity
pragma solidity ^0.8.0;

contract SimpleStorage {
    uint256 private _storedNumber;

    function setNumber(uint256 number) public {
        _storedNumber = number;
    }

    function getNumber() public view returns (uint256) {
        return _storedNumber;
    }
}


