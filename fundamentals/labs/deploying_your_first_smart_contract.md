# Lab: Creating and Deploying Your Own Cryptocurrency on the Rinkeby Testnet

In this lab, you'll use Remix to create and deploy your own ERC-20 token on the Rinkeby testnet. You'll need a Rinkeby testnet account with some test ETH, and access to the Solidity smart contract for the ERC-20 token.

[Here is the Code Snippet of the smart contract](https://github.com/joinpursuit/pursuit-crypto-lessons/blob/main/fundamentals/labs/erc720.sol)

## Step 1: Open Remix

First, open the [Remix IDE](https://remix.ethereum.org/) in your browser.

## Step 2: Create Your ERC-20 Token Smart Contract

In Remix, create a new file and paste the Solidity smart contract for the ERC-20 token that you want to deploy.

The contract provides a basic ERC-20 token implementation, including the ability to name your token and set its symbol. The contract also defines the token's total supply and includes functions for transferring tokens, approving token transfers, and checking account balances.

Feel free to modify the contract to suit your needs, such as changing the token name and symbol, adjusting the total supply, or adding custom functions.

## Step 3: Compile Your Contract

In Remix, click on the "Solidity Compiler" tab in the left sidebar. Select the appropriate compiler version for your contract, and then click the "Compile" button.

## Step 4: Deploy Your Contract

In Remix, click on the "Deploy & Run Transactions" tab in the left sidebar. Select your contract from the dropdown menu.

Under "Environment," select "Injected Web3" to connect to your wallet.

Under "Deploy," select "Injected Web3" as the environment.

Under "Account," select the account you want to deploy the contract from.

Under "Gas limit," enter the maximum amount of gas you're willing to spend to deploy the contract.

Under "Value," leave it as 0, unless you want to send some ETH along with your contract.

Click the "Deploy" button to deploy your contract.

## Step 5: Interact with Your Token

Once your token contract is deployed, you can interact with it by clicking on the "Deployed Contracts" tab in the left sidebar. Your contract should appear under the Rinkeby network.

Click on your contract to view its functions and variables. You can call these functions and read these variables by entering the appropriate values and clicking on the corresponding buttons.

## Step 6: View Your Token on the Blockchain Explorer

To view your token on the blockchain explorer, copy its address from the "Deployed Contracts" tab and paste it into a blockchain explorer such as [Etherscan](https://etherscan.io/). This will allow you to view your token's transactions, balance, and other information.

## Conclusion

Congratulations! You've successfully created and deployed your own ERC-20 token onto the Rinkeby testnet using Remix. By modifying and deploying the provided Solidity smart contract, you've gained experience in creating and customizing ERC-20 tokens. Keep exploring the possibilities of smart contracts and blockchain technology!
