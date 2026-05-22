# Achievement Badge NFT (ERC721 Style)

## Overview

This project demonstrates an ERC721-style Achievement Badge NFT smart contract deployed on SecureChain Mainnet (SCAI) using Solidity, Remix IDE, and MetaMask.

The smart contract creates blockchain-based achievement badges as NFTs for users, students, or interns.

---

# What is ERC721?

ERC721 is a standard used for creating Non-Fungible Tokens (NFTs) on Ethereum-compatible blockchains.

Unlike ERC20 tokens:
- ERC20 tokens are interchangeable
- ERC721 NFTs are unique

ERC721 NFTs are commonly used for:
- digital certificates
- gaming rewards
- collectibles
- achievement systems
- digital ownership verification

---

# Smart Contract Code

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract AchievementBadgeNFT {

    string public name = "Achievement Badge NFT";
    string public symbol = "ABNFT";

    uint public nextTokenId;

    address public owner;

    mapping(uint => address) public nftOwner;
    mapping(address => uint) public balanceOf;
    mapping(uint => string) public badgeData;

    constructor() {
        owner = msg.sender;
    }

    function mintBadge(
        address user,
        string memory badgeName
    ) public {

        require(
            msg.sender == owner,
            "Only owner can mint badges"
        );

        uint tokenId = nextTokenId;

        nftOwner[tokenId] = user;

        balanceOf[user] += 1;

        badgeData[tokenId] = badgeName;

        nextTokenId++;
    }

    function getBadge(uint tokenId)
        public
        view
        returns(string memory)
    {
        return badgeData[tokenId];
    }
}
```

---

# Explanation of the Code

| Component | Purpose |
|---|---|
| `name` | Stores NFT collection name |
| `symbol` | Stores NFT symbol |
| `nextTokenId` | Generates unique NFT IDs |
| `nftOwner` | Tracks NFT ownership |
| `balanceOf` | Stores NFT balance |
| `badgeData` | Stores badge details |
| `mintBadge()` | Mints achievement badge NFT |
| `getBadge()` | Retrieves badge information |

---

# Functionalities

- Create achievement badge NFTs
- Mint unique blockchain badges
- Store badge metadata
- Verify NFT ownership
- Track NFT balances

---

# Input and Output Example

## Mint Achievement Badge NFT

### Input

| Field | Example |
|---|---|
| User Address | Wallet Address |
| Badge Name | Top Performer Badge |

### Output

```text
NFT Badge Minted Successfully
```

### Badge Verification

```text
Top Performer Badge
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

1. Created ERC721-style NFT smart contract
2. Implemented NFT ownership tracking
3. Added achievement metadata storage
4. Implemented NFT minting functionality
5. Compiled the contract using Remix IDE
6. Connected MetaMask wallet with SecureChain Mainnet
7. Deployed the smart contract successfully
8. Minted and verified achievement badge NFTs

---

# Learning Outcomes

- Learned ERC721 NFT concepts
- Understood NFT ownership systems
- Explored blockchain achievement systems
- Learned NFT minting and metadata storage
- Understood decentralized verification mechanisms

---
