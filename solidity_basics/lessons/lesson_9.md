# Lesson: Upgradeability and Proxy Patterns in Solidity

In this lesson, we will explore upgradeability and proxy patterns in Solidity. We'll cover the concept of upgradeable smart contracts, the importance of storage layout, and various proxy patterns, such as transparent proxy, eternal storage, and unstructured storage.

## Upgradeable Smart Contracts

Smart contracts deployed on the Ethereum blockchain are immutable by default. However, there are cases where you may need to fix bugs, improve functionality, or update the logic of a contract. Upgradeable contracts enable you to do this by separating the contract's logic and data storage.

### Storage Layout

When upgrading a contract, it is crucial to preserve the contract's storage layout. The storage layout is the arrangement of state variables in the contract. If the storage layout is altered during an upgrade, it may lead to data corruption or unexpected behavior.

To maintain a consistent storage layout, follow these guidelines:

1. Add new state variables at the end of the contract.
2. Do not remove state variables.
3. Do not change the order of existing state variables.
4. Keep track of the storage layout across different versions of the contract.

## Proxy Patterns

Proxy patterns use a proxy contract to delegate calls to the contract with the actual implementation (also known as the implementation contract). The proxy contract holds the address of the implementation contract and forwards calls to it. This enables you to update the implementation contract while preserving the storage layout and the proxy contract's address.

There are several proxy patterns, including:

1. Transparent proxy pattern
2. Eternal storage pattern
3. Unstructured storage pattern

### Transparent Proxy Pattern

The transparent proxy pattern uses a single proxy contract to delegate calls to the implementation contract. The proxy contract maintains a storage slot to store the implementation contract's address.

```solidity
pragma solidity ^0.8.0;

contract Proxy {
    bytes32 private constant IMPLEMENTATION_SLOT = keccak256("IMPLEMENTATION_SLOT");

    function _setImplementation(address newImplementation) internal {
        bytes32 slot = IMPLEMENTATION_SLOT;
        assembly {
            sstore(slot, newImplementation)
        }
    }

    function _getImplementation() internal view returns (address implementation) {
        bytes32 slot = IMPLEMENTATION_SLOT;
        assembly {
            implementation := sload(slot)
        }
    }

    fallback() external payable {
        address implementation = _getImplementation();
        assembly {
            calldatacopy(0, 0, calldatasize())
            let result := delegatecall(gas(), implementation, 0, calldatasize(), 0, 0)
            returndatacopy(0, 0, returndatasize())
            switch result
            case 0 { revert(0, returndatasize()) }
            default { return(0, returndatasize()) }
        }
    }
}
```
### Eternal Storage Pattern
The eternal storage pattern separates the contract's storage and logic by using a storage contract to hold the data and an implementation contract for the logic. The storage contract exposes setter and getter functions that the implementation contract can call.
```solidity 
pragma solidity ^0.8.0;

contract EternalStorage {
    mapping(bytes32 => uint256) internal uintStorage;

    function getUint(bytes32 key) external view returns (uint256) {
        return uintStorage[key];
    }

    function setUint(bytes32 key, uint256 value) external {
        uintStorage[key] = value;
    }
}

contract Implementation {
    EternalStorage internal eternalStorage;

    constructor(EternalStorage _eternalStorage) {
        eternalStorage = _eternalStorage;
    }

    // Implementation contract logic
}
```
### Unstructured Storage Pattern
The unstructured storage pattern uses assembly to store and retrieve data from specific storage slots in the proxy contract. This approach allows you to keep the storage layout consistent across different versions of the contract without relying on a separate storage contract.

```solidity 
pragma solidity ^0.8.0;

// Library to handle unstructured storage
library UnstructuredStorage {
    // Compute the storage slot for a given key
    function getStorageSlot(bytes32 slot) internal pure returns (bytes32) {
        return bytes32(uint256(slot) << 96);
    }

    // Set a uint256 value in the specified storage slot
    function setUint(bytes32 slot, uint256 value) internal {
        bytes32 s = getStorageSlot(slot);
        assembly {
            sstore(s, value)
        }
    }

    // Get a uint256 value from the specified storage slot
    function getUint(bytes32 slot) internal view returns (uint256 value) {
        bytes32 s = getStorageSlot(slot);
        assembly {
            value := sload(s)
        }
    }
}

contract Proxy {
    // Use the UnstructuredStorage library to manage storage
    using UnstructuredStorage for bytes32;

    // Define a constant for the implementation slot
    bytes32 private constant IMPLEMENTATION_SLOT = keccak256("IMPLEMENTATION_SLOT");

    // Set the implementation address in the storage slot
    function _setImplementation(address newImplementation) internal {
        IMPLEMENTATION_SLOT.setUint(uint256(newImplementation));
    }

    // Get the implementation address from the storage slot
    function _getImplementation() internal view returns (address implementation) {
        implementation = address(IMPLEMENTATION_SLOT.getUint());
    }

    // Fallback function to delegate calls to the implementation contract
    fallback() external payable {
        address implementation = _getImplementation();
        assembly {
            calldatacopy(0, 0, calldatasize())
            let result := delegatecall(gas(), implementation, 0, calldatasize(), 0, 0)
            returndatacopy(0, 0, returndatasize())
            switch result
            case 0 { revert(0, returndatasize()) }
            default { return(0, returndatasize()) }
        }
    }
}
```
In this example, the UnstructuredStorage library provides functions to set and get data from specific storage slots. The Proxy contract uses this library to manage the implementation contract's address and handle delegated calls.

That concludes our lesson on upgradeability and proxy patterns in Solidity. These patterns are essential for developing flexible, maintainable, and future-proof smart contracts. In the next lesson, we will explore more advanced topics, such as access control and multi-signature wallets.
