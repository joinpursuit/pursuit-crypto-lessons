# Common DApp Architectures

In this lesson, we'll explore some common DApp architectures and their best practices. We'll focus on the interaction between the frontend (React) and the smart contracts (Solidity) in the context of decentralized applications.

## Objectives

- Understand various DApp architecture patterns
- Learn how to choose the right architecture for your DApp
- Explore the benefits and drawbacks of each pattern

## Architecture 1: Modular Smart Contracts

A modular approach divides the smart contract logic into multiple interconnected contracts. This separation of concerns makes the codebase more maintainable and upgradable.

### Example:

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Token {
    function transfer(address to, uint256 amount) external returns (bool) {
        // transfer logic
    }
}

contract DEX {
    Token private token;

    // DEX logic interacting with the Token contract
}
```
## Architecture 2: Proxy Contracts
Proxy contracts allow for upgradable smart contracts by separating the logic implementation from the storage. This pattern enables upgrading the contract logic without affecting the data.

### Example:
```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Proxy {
    address public implementation;

    // Forward function calls to the implementation
    function _forwardCall() internal {
        // Forwarding logic
    }
}

contract Logic {
    // Implementation of the contract logic
}

```

## Architecture 3: Off-chain Computations and Oracles
Off-chain computations and oracles help to reduce gas costs and improve the scalability of DApps. These systems perform data processing and validation outside the blockchain and then provide the results on-chain when needed.
```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

contract Oracle {
    AggregatorV3Interface private priceFeed;

    constructor(address _priceFeed) {
        priceFeed = AggregatorV3Interface(_priceFeed);
    }

    function getLatestPrice() public view returns (int) {
        (, int price, , , ) = priceFeed.latestRoundData();
        return price;
    }
}

contract DeFi {
    Oracle private oracle;

    constructor(address _oracle) {
        oracle = Oracle(_oracle);
    }

    // DeFi logic using the Oracle contract for off-chain data
}
```

## Architecture 4: Layer 2 Scaling Solutions
Layer 2 scaling solutions provide increased throughput and lower transaction fees for DApps. They typically involve off-chain transactions and data aggregation before committing to the main chain.

### Example:
```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract L2Bridge {
    // Bridge logic between L1 and L2
}

contract L2DApp {
    // Application logic on L2
}
```

## Architecture 5: Event-Driven Architecture
In an event-driven architecture, smart contracts emit events to signal state changes or important actions. The frontend listens for these events and updates its state accordingly.

### Example:
```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Auction {
    event AuctionEnded(address winner, uint256 highestBid);

    function endAuction() public {
        // Auction ending logic

        emit AuctionEnded(winner, highestBid);
    }
}

```

React component:
```react
import { useEffect } from "react";
import { useWeb3 } from "./web3";

function Auction() {
    const { contract } = useWeb3();

    useEffect(() => {
        const onAuctionEnded = (winner, highestBid) => {
            // Update UI with the auction result
        };

        contract.on("AuctionEnded", onAuctionEnded);
        return () => contract.off("AuctionEnded", onAuctionEnded);
    }, [contract]);

    // JSX rendering
}
```
These common patterns are often used in combination to build efficient, scalable, and maintainable DApps. The choice of architecture depends on your application's specific requirements and goals.
