# Interactive Lab: Forking and Customizing Uniswap DApp

In this lab, students will fork the Uniswap repository and create their own customized DApp by modifying the existing codebase. They will learn about Uniswap's smart contracts, frontend components, and how to modify the user interface and functionality to create a unique decentralized exchange platform.

## Tasks

### 1. Fork the Uniswap repository

- Go to the Uniswap Interface repository: [https://github.com/Uniswap/interface](https://github.com/Uniswap/interface)
- Click on the "Fork" button in the top-right corner of the GitHub page.
- Select your GitHub account to create a copy of the repository under your own account.

### 2. Set up the development environment

- Clone your forked repository to your local machine by running the following command in your terminal or command prompt:
git clone https://github.com/YOUR_USERNAME/interface.git

- Change to the cloned repository's directory:
cd interface

- Install the required dependencies:
yarn

- Start the development server:
yarn start
### 3. Study the Uniswap smart contracts

- Visit the Uniswap V2 Core repository: [https://github.com/Uniswap/uniswap-v2-core](https://github.com/Uniswap/uniswap-v2-core)
- Explore the smart contracts, focusing on key functionalities like creating and managing liquidity pools, token swapping, and calculating prices.
- Take note of important contract functions and events that you can use to build your own DApp.

### 4. Modify the frontend components

- In your local Uniswap Interface repository, navigate to the `src` directory, which contains the frontend components.
- Examine key components like the token selection, swap interface, and liquidity management interface.
- Customize these components to create a unique user interface by changing styles, layouts, and visual elements. For example, you can modify the `src/theme/index.tsx` file to change the color scheme and typography.

### 5. Add custom features

- To create your own DApp, implement new features or modify existing functionalities to differentiate your project from Uniswap. Consider the following ideas:

  - Add support for additional token lists or create your own custom token list.
  - Implement a "featured tokens" section that highlights specific tokens or projects.
  - Create a custom analytics page to display trading volumes, liquidity, and other relevant data.

### 6. Connect to a custom smart contract

- Write a custom smart contract that adds new features or interacts with Uniswap's contracts in a unique way.
- Use Hardhat or Truffle to compile and deploy your smart contract to a test network like Rinkeby or Ropsten.
- In your local Uniswap Interface repository, navigate to the `src` directory and locate the `constants/contracts.ts` file. Update the contract addresses to include your custom smart contract address on the test network.
- Create a new frontend component that interacts with your custom smart contract. You can use the existing components as a reference for connecting to the smart contract using Web3.js or Ethers.js.

### 7. Test your DApp

- Ensure that your DApp is running locally and connected to the test network where you deployed your custom smart contract.
- Test all the functionalities you implemented or modified, such as token swapping, adding liquidity, and interacting with your custom smart contract.
- Fix any issues or bugs that you encounter during testing.

### 8. Deploy your DApp

- Once you're satisfied with your custom DApp, prepare it for deployment. Optimize the build for production by running the following command:
yarn build

- Deploy your DApp to a hosting platform like GitHub Pages, Netlify, or Vercel. Follow the platform's documentation for deploying a React app.
- Update your DApp to use a custom domain, if desired, by following the hosting platform's guidelines for domain configuration.

### 9. Share your custom DApp with the community

- Create a README file in your repository to provide an overview of your custom DApp, its features, and how to use it. Include screenshots or GIFs to showcase your DApp's user interface and functionality.
- Share your DApp on social media, developer forums, or other relevant channels to gather feedback from users and fellow developers.
- Actively maintain your DApp by fixing bugs, implementing new features, and addressing user feedback.

### 10. Contribute to the Uniswap project

- If you've discovered any improvements or bug fixes that could benefit the Uniswap project, consider submitting a pull request to the original Uniswap repositories.
- Participate in the Uniswap community by joining their Discord server, attending events, or contributing to discussions on GitHub and other platforms.

By completing this lab, you've learned how to fork and customize the Uniswap DApp, create your own decentralized exchange platform








