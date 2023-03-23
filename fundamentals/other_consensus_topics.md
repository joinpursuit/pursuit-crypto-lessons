# Other Consensus Topics
There are many topics that relate to consensus and the core concepts that are used to implement and facilitate it. Below are some of them that one should be aware of.

## Finality
In the context of blockchains, finality refers to the state in which a block and its contents are considered permanent and irreversible within the network, a state that achieved through consensus. In other words, once a block has achieved finality, its contents cannot be modified or deleted. Finality is an important property of blockchains because it ensures the integrity and immutability of the ledger.

### Types of Finality
There are two types of finality in blockchains: probabilistic finality and absolute finality.

### Probabilistic Finality
Probabilistic finality is achieved through the consensus mechanism used by the blockchain. In a proof-of-work (PoW) blockchain, for example, a block is considered final once it has been mined and added to the longest chain. However, because PoW blockchains are susceptible to 51% attacks, there is always a small probability that a block could be reversed if a malicious actor gains control of the majority of the network's computing power.

### Absolute Finality
Absolute finality, on the other hand, guarantees that a block and its contents are permanently and irrevocably recorded on the blockchain. This is achieved through the use of alternative consensus mechanisms such as proof-of-stake (PoS) or Byzantine fault tolerance (BFT) algorithms. In a PoS blockchain, for example, finality is achieved when a supermajority of validators agree on a block. Once finality is achieved, it is mathematically impossible to reverse the block or its contents.

### Importance of Finality
Finality is an important property of blockchains because it ensures the immutability and integrity of the ledger. Once a block has achieved finality, its contents become part of the permanent record of the blockchain, which makes it extremely difficult to manipulate or alter the data. This property is essential for applications such as digital currencies, where the integrity of the ledger is critical for ensuring the security and trustworthiness of the system.

## Merkle Trees 
A Merkle tree is a fundamental data structure used in blockchains to efficiently and securely verify the integrity of large amounts of data. Merkle trees are used in many aspects of blockchain technology, including transaction verification, state storage, and consensus algorithms.

### What is a Merkle Tree?
A Merkle tree is a binary tree in which every leaf node represents a piece of data, and every non-leaf node represents the hash of its child nodes. The top node of the tree, known as the root node, represents the hash of all the data in the tree. The structure of the Merkle tree allows for efficient and secure verification of the integrity of the data, without the need to download and verify the entire dataset.

### How are Merkle Trees used in Blockchains?
In a blockchain, a Merkle tree is used to represent a set of transactions or state updates. The leaves of the tree represent the individual transactions or state updates, while the root of the tree represents the hash of all the transactions or state updates. This Merkle root is then included in the header of the block, along with other metadata such as the block number and timestamp.

When a node in the blockchain network receives a new block, it can quickly and efficiently verify the validity of the transactions or state updates in the block by verifying the Merkle root. The node can request the hashes of the individual transactions or state updates from other nodes on the network, and use these hashes to compute the Merkle root. If the computed Merkle root matches the one in the block header, the node can be sure that the transactions or state updates in the block are valid and have not been tampered with.

### Benefits of Merkle Trees in Blockchains
Using Merkle trees in blockchains provides several benefits, including:

**Efficiency**: Merkle trees allow for efficient verification of large amounts of data, without the need to download and verify the entire dataset.

**Security**: Because the root of the Merkle tree represents the hash of all the data in the tree, any modification to the data will result in a different root hash. This makes it extremely difficult for an attacker to tamper with the data without being detected.

**Scalability**: Merkle trees allow blockchains to scale to large amounts of data, without sacrificing efficiency or security.

