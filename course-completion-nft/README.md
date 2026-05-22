# Course Completion NFT (ERC721 Style)

## Overview

This project demonstrates an ERC721-style Course Completion NFT smart contract deployed on SecureChain Mainnet (SCAI) using Solidity, Remix IDE, and MetaMask.

The smart contract creates blockchain-based NFTs representing course completion certificates for students or learners.

---

# What is ERC721?

ERC721 is a standard used for creating Non-Fungible Tokens (NFTs) on Ethereum-compatible blockchains.

Unlike ERC20 tokens:
- ERC20 tokens are interchangeable
- ERC721 tokens are unique

ERC721 NFTs are commonly used for:
- digital certificates
- collectibles
- gaming assets
- artwork
- ownership verification

---

# Smart Contract Code

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract CourseCompletionNFT {

    string public name = "Course Completion NFT";
    string public symbol = "CCNFT";

    uint public nextTokenId;

    address public owner;

    mapping(uint => address) public nftOwner;
    mapping(address => uint) public balanceOf;
    mapping(uint => string) public courseData;

    constructor() {
        owner = msg.sender;
    }

    function mintCourseNFT(
        address student,
        string memory courseName
    ) public {

        require(
            msg.sender == owner,
            "Only owner can mint NFTs"
        );

        uint tokenId = nextTokenId;

        nftOwner[tokenId] = student;

        balanceOf[student] += 1;

        courseData[tokenId] = courseName;

        nextTokenId++;
    }

    function getCourse(uint tokenId)
        public
        view
        returns(string memory)
    {
        return courseData[tokenId];
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
| `courseData` | Stores course details |
| `mintCourseNFT()` | Mints course completion NFT |
| `getCourse()` | Retrieves course information |

---

# Functionalities

- Create blockchain-based course certificates
- Mint unique course completion NFTs
- Store course metadata
- Verify NFT ownership
- Track student NFT balances

---

# Input and Output Example

## Mint Course NFT

### Input

| Field | Example |
|---|---|
| Student Address | Wallet Address |
| Course Name | Blockchain Development Course |

### Output

```text
NFT Minted Successfully
```

### Course Verification

```text
Blockchain Development Course
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
3. Added course metadata storage
4. Implemented NFT minting functionality
5. Compiled the contract using Remix IDE
6. Connected MetaMask wallet with SecureChain Mainnet
7. Deployed the smart contract successfully
8. Minted and verified course completion NFTs

---

# Learning Outcomes

- Learned ERC721 NFT concepts
- Understood NFT ownership systems
- Explored blockchain-based certificate systems
- Learned NFT minting and metadata storage
- Understood decentralized verification mechanisms

---

