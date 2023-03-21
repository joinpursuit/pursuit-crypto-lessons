# Polygon: A Layer 2 Scaling Solution for Ethereum

Polygon (previously known as Matic Network) is a Layer 2 scaling solution built on top of Ethereum that aims to provide faster and cheaper transactions by utilizing sidechains and a Proof of Stake (PoS) consensus mechanism. Polygon is designed to enhance the capabilities of Ethereum, making it suitable for various applications, including Decentralized Finance (DeFi), Non-Fungible Tokens (NFTs), and more.

## How Polygon Works

Polygon uses sidechains to process transactions off the Ethereum main chain, which helps reduce network congestion and lower transaction fees. These sidechains are secured by a set of validators who stake the native token (MATIC) to participate in the consensus process. Polygon also incorporates the Plasma framework to allow for the easy transfer of assets between the Ethereum main chain and Polygon sidechains.

Key features of Polygon include:

- Ethereum compatibility: Polygon is fully compatible with the Ethereum ecosystem, making it easy for developers to build and deploy applications on Polygon.
- Scalability: Polygon offers significantly higher transaction throughput than the Ethereum main chain, enabling the development of scalable applications.
- Security: Polygon leverages a decentralized network of validators and the Plasma framework to ensure the security of assets and transactions on its sidechains.
- Interoperability: Polygon allows for seamless asset transfers between the Ethereum main chain and its sidechains, as well as cross-chain communication with other Layer 2 solutions.

# Activity: Interacting with the Polygon Network

In this activity, students will learn how to interact with the Polygon network using Metamask and a simple smart contract. The goal of this activity is to provide hands-on experience with Polygon's Layer 2 solution and demonstrate its benefits, such as faster transactions and lower fees.

## Prerequisites

- Basic understanding of Ethereum, smart contracts, and Solidity
- Metamask browser extension installed and set up

## Tasks

### 1. Configure Metamask for Polygon

- Visit the Polygon documentation page on configuring Metamask: [https://docs.polygon.technology/docs/develop/metamask/config-polygon-on-metamask](https://docs.polygon.technology/docs/develop/metamask/config-polygon-on-metamask)
- Follow the instructions to add the Polygon network to your Metamask wallet.

### 2. Obtain MATIC tokens for the test network

- Visit the Polygon Faucet: [https://faucet.polygon.technology/](https://faucet.polygon.technology/)
- Connect your Metamask wallet to the faucet and request test MATIC tokens for the Mumbai test network.

### 3. Write a simple smart contract

- Create a new Solidity file for a simple smart contract that stores a number and allows users to update it.
- Compile the smart contract using the Solidity compiler or an online IDE, such as Remix.

### 4. Deploy the smart contract to the Polygon test network

- Use an online IDE like Remix, or a development framework like Truffle or Hardhat to deploy your smart contract to the Polygon Mumbai test network.
- Make sure to select the correct network (Polygon Mumbai) in Metamask when deploying the smart contract.
- Save the contract address after the deployment is complete.

### 5. Interact with the deployed smart contract

- In Remix, or using a custom frontend or script, interact with your deployed smart contract by calling its functions to store and retrieve the number.
- Observe the transaction speed and fees associated with the Polygon network compared to the Ethereum mainnet.

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

