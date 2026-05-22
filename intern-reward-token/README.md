# Intern Reward Token (ERC20 Style)

## Overview

This project demonstrates an ERC20-style Intern Reward Token smart contract deployed on SecureChain Mainnet (SCAI) using Solidity, Remix IDE, and MetaMask.

The smart contract creates a blockchain-based reward token system that allows token creation, balance management, and token transfers between users.

---

# What is ERC20?

ERC20 is a widely used token standard for Ethereum-compatible blockchains.

It defines common token functionalities such as:
- token supply
- balance tracking
- token transfer
- wallet interaction

ERC20 tokens are commonly used in:
- cryptocurrencies
- reward systems
- Web3 applications
- decentralized finance (DeFi)
- gaming ecosystems

---

# Smart Contract Code

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract InternRewardToken {

    string public name = "Intern Reward Token";
    string public symbol = "IRT";
    uint public totalSupply = 1000000;

    address public owner;

    mapping(address => uint) public balances;

    constructor() {
        owner = msg.sender;
        balances[msg.sender] = totalSupply;
    }

    function transfer(address recipient, uint amount) public {

        require(
            balances[msg.sender] >= amount,
            "Insufficient balance"
        );

        balances[msg.sender] -= amount;
        balances[recipient] += amount;
    }

    function checkBalance(address user)
        public
        view
        returns(uint)
    {
        return balances[user];
    }
}
```

---

# Explanation of the Code

| Component | Purpose |
|---|---|
| `name` | Stores token name |
| `symbol` | Stores token symbol |
| `totalSupply` | Total number of tokens |
| `balances` | Tracks wallet balances |
| `constructor()` | Assigns tokens to deployer |
| `transfer()` | Transfers tokens between users |
| `checkBalance()` | Returns wallet token balance |

---

# Functionalities

- Create blockchain reward token
- Store token balances
- Transfer tokens between users
- Check wallet balances
- Demonstrate ERC20 token concepts

---

# Input and Output Example

## Token Transfer

### Input

| Field | Example |
|---|---|
| Recipient | Wallet Address |
| Amount | 100 |

### Output

```text
Tokens transferred successfully
```

### Updated Balance Example

```text
999900
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

1. Created ERC20-style reward token smart contract
2. Defined token supply and balances
3. Implemented token transfer functionality
4. Compiled the contract using Remix IDE
5. Connected MetaMask wallet with SecureChain Mainnet
6. Deployed the smart contract successfully
7. Tested token transfer and balance checking

---

# Learning Outcomes

- Learned ERC20 token fundamentals
- Understood token balance management
- Explored mappings in Solidity
- Learned blockchain token transfer mechanisms
- Understood basic tokenomics concepts

---

# Screenshots

Add screenshots inside the `screenshots/` folder showing:
- Contract Deployment
- Token Supply
- Token Transfer
- Balance Verification
- MetaMask Transaction Confirmation