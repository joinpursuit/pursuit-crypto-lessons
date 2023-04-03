# Lab: Blockchain Integration with Infura

In this lab, we will guide you through integrating your decentralized application (DApp) with external blockchains and Layer 2 (L2) solutions using Infura. By the end of this lab, you should have a better understanding of how to connect your DApp to different networks and L2 solutions.

## Objectives

- Set up Infura to connect to external blockchains and Layer 2 solutions
- Configure your DApp to interact with various networks
- Deploy and test your DApp on different networks

## Prerequisites

Before you begin this lab, ensure that you have:

- A basic understanding of Solidity and smart contract development
- Familiarity with DApp development and deployment
- A development environment set up with Truffle or Hardhat
- A MetaMask account

## Step 1: Set Up Infura

First, sign up for an Infura account and obtain API keys for the networks you want to connect to.

1.1. Visit [infura.io](https://infura.io/) and create an account.

1.2. Create a new project and obtain API keys for Ethereum mainnet, Optimistic Rollups, and ZK-Rollups.

## Step 2: Configure Your DApp

In this step, you will configure your DApp to connect to the desired blockchain networks and Layer 2 solutions.

2.1. Update your DApp's configuration to include the Infura API keys and network settings.

```javascript
// truffle-config.js or hardhat.config.js
module.exports = {
  networks: {
    mainnet: {
      url: `https://mainnet.infura.io/v3/YOUR_INFURA_API_KEY`,
      chainId: 1,
      // Other settings
    },
    optimistic: {
      url: `https://optimism-mainnet.infura.io/v3/YOUR_INFURA_API_KEY`,
      chainId: 10,
      // Other settings
    },
    zkRollup: {
      url: `https://zkrollup-mainnet.infura.io/v3/YOUR_INFURA_API_KEY`,
      chainId: 2, // Replace with the actual chainId for the ZK-Rollup network
      // Other settings
    },
  },
  // Other configurations
};
```
2.2. Configure your frontend application to use the appropriate Web3 provider based on the user's network selection.
```javascript
// Example using Web3.js
import Web3 from "web3";

const infuraUrl = `https://mainnet.infura.io/v3/YOUR_INFURA_API_KEY`; // Replace with the selected network URL
const web3 = new Web3(new Web3.providers.HttpProvider(infuraUrl));
```
## Step 3: Deploy and Test Your DApp
In this step, you will deploy and test your DApp on the chosen networks and Layer 2 solutions.

3.1. Deploy your smart contracts on Ethereum mainnet, Optimistic Rollups, and ZK-Rollups using Truffle or Hardhat.

3.2. Test your DApp on the different networks, ensuring that it can correctly interact with each network's JSON-RPC API and Web3 provider.

By completing this lab, you have successfully integrated your DApp with external blockchains and Layer 2 solutions using Infura. You now have a better understanding of how to connect your DApp to different networks and leverage the unique benefits of each network for a more scalable and versatile user experience.
