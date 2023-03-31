# Lab: Integrating External APIs with Chainlink

In this lab, we will guide you through the process of integrating an external API into your DApp using Chainlink. By the end of this lab, you will have a better understanding of how to fetch real-world data from external sources and use it in your smart contracts.

## Objectives

- Deploy a Chainlink oracle contract
- Create a smart contract that requests data from an external API
- Fund the oracle contract with LINK tokens
- Test the integration of the external API with your DApp

## Prerequisites

Before you begin this lab, ensure that you have:

- A basic understanding of Solidity and smart contract development
- Familiarity with Chainlink and its role in connecting smart contracts with external data
- A development environment set up with Truffle or Hardhat

## Step 1: Deploy a Chainlink Oracle Contract

First, you will need to deploy a Chainlink oracle contract and fund it with LINK tokens.

1.1. Install the Chainlink contract package:

```bash
npm install @chainlink/contracts
```
1.2. Create a new Solidity file for your Chainlink oracle contract:
```bash
pragma solidity ^0.8.0;

import "@chainlink/contracts/src/v0.8/ChainlinkClient.sol";

contract MyOracle is ChainlinkClient {
    // Oracle contract logic
}
```
## Step 2: Create a Smart Contract that Requests Data from an External API
Next, create a smart contract that requests data from the external API using the Chainlink oracle contract.
```solidity
pragma solidity ^0.8.0;

import "@chainlink/contracts/src/v0.8/ChainlinkClient.sol";

contract MyContract is ChainlinkClient {
    // Your smart contract logic that fetches data from the external API
}
```

## Step 3: Fund the Oracle Contract with LINK Tokens
To use the Chainlink oracle, you will need to fund the oracle contract with LINK tokens.

3.1. Acquire LINK tokens for your development network (e.g., Rinkeby or Kovan).

3.2. Send the LINK tokens to the deployed oracle contract.

## Step 4: Test the Integration of the External API with Your DApp
Finally, test the integration of the external API with your DApp.

4.1. Write unit tests to ensure that your smart contract can successfully fetch data from the external API.

4.2. Deploy your DApp and test its functionality with real-world data from the external API.

By completing this lab, you have successfully integrated an external API into your DApp using Chainlink. You now have a better understanding of how to use oracles and external APIs to bring real-world data into your decentralized applications.

