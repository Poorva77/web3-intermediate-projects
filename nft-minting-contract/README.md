# NFT Minting Contract (ERC721 Style)

## Overview

This project demonstrates an ERC721-style NFT Minting smart contract deployed on SecureChain Mainnet (SCAI) using Solidity, Remix IDE, and MetaMask.

The contract allows minting unique NFTs with metadata storage and ownership tracking functionality.

---

# What is NFT Minting?

NFT minting is the process of creating a unique digital asset on blockchain.

Each NFT contains:
- a unique token ID
- ownership information
- metadata
- blockchain verification

NFT minting is widely used in:
- digital art
- gaming
- certificates
- collectibles
- digital identity systems

---

# Smart Contract Code

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract NFTMintingContract {

    string public name = "Custom NFT Collection";
    string public symbol = "CNFT";

    uint public nextTokenId;

    address public owner;

    mapping(uint => address) public nftOwner;
    mapping(address => uint) public balanceOf;
    mapping(uint => string) public tokenURI;

    constructor() {
        owner = msg.sender;
    }

    function mintNFT(
        address recipient,
        string memory metadataURI
    ) public {

        require(
            msg.sender == owner,
            "Only owner can mint NFTs"
        );

        uint tokenId = nextTokenId;

        nftOwner[tokenId] = recipient;

        balanceOf[recipient] += 1;

        tokenURI[tokenId] = metadataURI;

        nextTokenId++;
    }

    function getNFTMetadata(uint tokenId)
        public
        view
        returns(string memory)
    {
        return tokenURI[tokenId];
    }
}
```

---

# Explanation of the Code

| Component | Purpose |
|---|---|
| `name` | NFT collection name |
| `symbol` | NFT collection symbol |
| `nextTokenId` | Generates unique token IDs |
| `nftOwner` | Tracks NFT ownership |
| `balanceOf` | Stores NFT balances |
| `tokenURI` | Stores NFT metadata |
| `mintNFT()` | Mints new NFT |
| `getNFTMetadata()` | Retrieves NFT metadata |

---

# Functionalities

- Mint NFTs on blockchain
- Store NFT metadata
- Track NFT ownership
- Verify NFT information
- Manage NFT balances

---

# Input and Output Example

## Mint NFT

### Input

| Field | Example |
|---|---|
| Recipient Address | Wallet Address |
| Metadata URI | ipfs://sample-nft-metadata |

### Output

```text
NFT Minted Successfully
```

### Metadata Verification

```text
ipfs://sample-nft-metadata
```

---

# Deployment Details

| Property | Value |
|---|---|
| Network | SecureChain Mainnet (SCAI) |
| IDE Used | Remix IDE |
| Wallet | MetaMask |
| Language | Solidity |
| Compiler Version | 0.8.7 |

---

# Contract Address

```text
PASTE_DEPLOYED_CONTRACT_ADDRESS_HERE
```

---

# Steps Performed

1. Created NFT minting smart contract
2. Implemented NFT ownership tracking
3. Added NFT metadata storage
4. Implemented NFT minting functionality
5. Compiled the contract using Remix IDE
6. Connected MetaMask wallet with SecureChain Mainnet
7. Deployed the smart contract successfully
8. Minted and verified NFTs

---

# Learning Outcomes

- Learned NFT minting concepts
- Understood NFT ownership systems
- Explored metadata storage in Solidity
- Learned blockchain collectible systems
- Understood ERC721-style NFT architecture

---

