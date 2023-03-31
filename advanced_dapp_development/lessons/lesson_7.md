# Oracles and External APIs

In this lesson, we'll explore how to use oracles and external APIs to integrate real-world data into decentralized applications (DApps). These tools enable smart contracts to access off-chain data and interact with external systems, expanding the range of possible use cases for DApps.

## Objectives

- Understand the role of oracles in DApps
- Learn how to use external APIs in smart contracts
- Explore the integration of oracles and external APIs into DApp development

## Oracles

Oracles are trusted third-party services that provide smart contracts with external data or computation results. They bridge the gap between the blockchain and the real world by enabling smart contracts to access information that is not natively available on the blockchain, such as weather data, sports results, or financial data.

### Types of Oracles

There are several types of oracles, including:

1. **Software oracles**: These oracles provide data from online sources, such as APIs or web scraping.
2. **Hardware oracles**: These oracles gather data from physical sensors or devices and relay it to the blockchain.
3. **Consensus-based oracles**: These oracles aggregate data from multiple sources and use a consensus mechanism to determine the final result.

### Chainlink

Chainlink is a decentralized oracle network that allows smart contracts to access off-chain data feeds, web APIs, and traditional bank payments. It uses a network of independent node operators to provide reliable and secure data to smart contracts.

To learn more about Chainlink and how to integrate it into your DApp, visit the [Chainlink documentation](https://docs.chain.link/docs).

## External APIs

External APIs provide data or services that can be accessed programmatically via HTTP requests. They allow DApps to interact with off-chain systems, such as weather services, financial data providers, or social media platforms.

To use external APIs in a DApp, you'll need an oracle service to fetch the data and relay it to your smart contract. Here's an example of how to use an external API with Chainlink.
