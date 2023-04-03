# Lab: Decentralized Storage with IPFS

In this lab, you will integrate decentralized storage into your decentralized application (DApp) using the InterPlanetary File System (IPFS). By the end of this lab, you should have a better understanding of how to store your DApp's data on a decentralized storage platform like IPFS.

## Objectives

- Set up IPFS for your DApp
- Store and retrieve data using IPFS
- Integrate IPFS with your DApp's frontend

## Prerequisites

Before you begin this lab, ensure that you have:

- A basic understanding of Solidity and smart contract development
- Familiarity with DApp development and deployment
- A development environment set up with Truffle or Hardhat
- Node.js installed

## Step 1: Set Up IPFS

First, you will need to set up IPFS for your DApp.

1.1. Install the IPFS command-line tool by following the instructions on the [IPFS installation guide](https://docs.ipfs.io/install/command-line/).

1.2. Initialize your local IPFS repository by running the following command in your terminal:

```bash
ipfs init
```
1.3. Start your IPFS daemon by running:
```bash
ipfs daemon
```
## Step 2: Store and Retrieve Data with IPFS
In this step, you will practice storing and retrieving data using IPFS.

2.1. Add a file to IPFS by running the following command:
```bash
ipfs add <path/to/your/file>
```
Note the IPFS hash returned after adding the file. You will use this hash to retrieve the file later.

2.2. Retrieve the file from IPFS using the hash:
```bash
ipfs cat <IPFS_hash>
```

## Step 3: Integrate IPFS with Your DApp's Frontend
In this step, you will integrate IPFS with your DApp's frontend, allowing users to store and retrieve data using IPFS.

3.1. Install the ipfs-http-client package to interact with IPFS from your frontend application:
```bash
npm install ipfs-http-client
```

3.2. Import the ipfs-http-client package in your frontend application:
```javascript
import createIPFS from "ipfs-http-client";
const ipfs = createIPFS({ host: "localhost", port: "5001", protocol: "http" });
```
3.3. Add a file to IPFS using the ipfs-http-client:
```javascript
async function addFile(file) {
  const { path } = await ipfs.add(file);
  console.log("IPFS Hash:", path);
  return path;
}
```
3.4. Retrieve a file from IPFS using the ipfs-http-client:
```javascript
async function getFile(ipfsHash) {
  const stream = ipfs.cat(ipfsHash);
  let data = "";

  for await (const chunk of stream) {
    data += chunk.toString();
  }

  console.log("File content:", data);
  return data;
}
```
By completing this lab, you have successfully integrated decentralized storage into your DApp using IPFS. You now have a better understanding of how to store and retrieve data on a decentralized storage platform, providing a more resilient and censorship-resistant solution for your DApp's data storage needs.
