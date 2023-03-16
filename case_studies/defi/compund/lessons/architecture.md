## Compound's Protocol Architecture

### Smart Contracts and Components

Compound is built on a series of interconnected smart contracts that facilitate lending, borrowing, and the management of assets. Key components of Compound's protocol architecture include:

1. **Money Markets**: Compound organizes its lending and borrowing services through individual money market contracts for each supported asset. These contracts manage deposits, withdrawals, borrows, and interest rate calculations.

2. **cTokens**: When users supply assets to Compound, they receive cTokens, which represent their share of the supplied assets and accumulate interest in real-time. cTokens can also be redeemed for the underlying assets at any time.

3. **Interest Rate Models**: Compound uses algorithmic interest rate models to determine the interest rates for borrowing and lending assets. These models adjust rates based on factors such as asset utilization and market demand.

4. **Price Oracles**: Compound relies on decentralized price oracles to provide accurate and up-to-date asset price information, ensuring proper collateralization and liquidation.

5. **Governance**: The Compound protocol is governed by COMP token holders, who can propose and vote on changes to the protocol, such as adding new assets, adjusting interest rate models, or modifying platform parameters.

### Liquidation Mechanism

Compound uses a liquidation mechanism to protect the platform from undercollateralized loans. Borrowers are required to maintain a sufficient collateral-to-debt ratio, which varies depending on the asset. If a borrower's collateral falls below the required threshold, their position can be liquidated by liquidators, who repay a portion of the borrower's debt in exchange for the borrower's collateral at a discounted rate.
