# Internship Certificate NFT (ERC721 Style)

## Overview

This project demonstrates an ERC721-style Internship Certificate NFT smart contract deployed on SecureChain Mainnet (SCAI) using Solidity, Remix IDE, and MetaMask.

The smart contract creates blockchain-based internship certificates as unique NFTs for students or interns.

---

# What is ERC721?

ERC721 is a standard for creating Non-Fungible Tokens (NFTs) on Ethereum-compatible blockchains.

Unlike ERC20 tokens:
- ERC20 tokens are interchangeable
- ERC721 tokens are unique

ERC721 NFTs are commonly used for:
- digital certificates
- artwork
- collectibles
- gaming assets
- digital ownership systems

---

# Smart Contract Code

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract InternshipCertificateNFT {

    string public name = "Internship Certificate NFT";
    string public symbol = "ICNFT";

    uint public nextTokenId;

    address public owner;

    mapping(uint => address) public nftOwner;
    mapping(address => uint) public balanceOf;
    mapping(uint => string) public certificateData;

    constructor() {
        owner = msg.sender;
    }

    function mintCertificate(
        address student,
        string memory certificateName
    ) public {

        require(
            msg.sender == owner,
            "Only owner can mint certificates"
        );

        uint tokenId = nextTokenId;

        nftOwner[tokenId] = student;

        balanceOf[student] += 1;

        certificateData[tokenId] = certificateName;

        nextTokenId++;
    }

    function getCertificate(uint tokenId)
        public
        view
        returns(string memory)
    {
        return certificateData[tokenId];
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
| `balanceOf` | Stores NFT balance of users |
| `certificateData` | Stores certificate details |
| `mintCertificate()` | Creates certificate NFT |
| `getCertificate()` | Returns certificate details |

---

# Functionalities

- Create internship certificate NFTs
- Mint unique NFT certificates
- Store certificate metadata
- Track NFT ownership
- Verify certificate information on blockchain

---

# Input and Output Example

## Mint Certificate NFT

### Input

| Field | Example |
|---|---|
| Student Address | Wallet Address |
| Certificate Name | Blockchain Internship Certificate |

### Output

```text
NFT Certificate Minted Successfully
```

### Certificate Query

```text
Blockchain Internship Certificate
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
3. Added certificate metadata storage
4. Implemented NFT minting functionality
5. Compiled the contract using Remix IDE
6. Connected MetaMask wallet with SecureChain Mainnet
7. Deployed the smart contract successfully
8. Minted and verified internship certificate NFTs

---

# Learning Outcomes

- Learned ERC721 NFT fundamentals
- Understood NFT ownership systems
- Explored blockchain certificate systems
- Learned NFT minting mechanisms
- Understood metadata storage in Solidity

---

# Screenshots

- MetaMask Transaction Confirmation