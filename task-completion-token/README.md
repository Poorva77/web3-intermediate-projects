# Task Completion Token (ERC20 Style)

## Overview

This project demonstrates an ERC20-style Task Completion Token smart contract deployed on SecureChain Mainnet (SCAI) using Solidity, Remix IDE, and MetaMask.

The contract provides a blockchain-based reward mechanism where interns can receive tokens after completing assigned tasks.

---

# What is an ERC20 Token?

ERC20 is a standard token format used in Ethereum-compatible blockchains.

ERC20 tokens are commonly used for:
- reward systems
- cryptocurrencies
- governance
- gaming economies
- decentralized applications

This project demonstrates a simplified ERC20-style implementation for internship task rewards.

---

# Smart Contract Code

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract TaskCompletionToken {

    string public name = "Task Completion Token";
    string public symbol = "TCT";
    uint public totalSupply = 500000;

    address public owner;

    mapping(address => uint) public balances;

    constructor() {
        owner = msg.sender;
        balances[msg.sender] = totalSupply;
    }

    function rewardIntern(address intern, uint amount) public {

        require(
            msg.sender == owner,
            "Only owner can reward tokens"
        );

        require(
            balances[owner] >= amount,
            "Insufficient owner balance"
        );

        balances[owner] -= amount;
        balances[intern] += amount;
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
| `totalSupply` | Total token supply |
| `balances` | Tracks wallet balances |
| `owner` | Stores contract deployer |
| `rewardIntern()` | Rewards interns with tokens |
| `checkBalance()` | Checks token balance |

---

# Functionalities

- Create reward token system
- Reward interns after task completion
- Track token balances
- Demonstrate owner-controlled token distribution

---

# Input and Output Example

## Reward Intern

### Input

| Field | Example |
|---|---|
| Intern Address | Wallet Address |
| Amount | 200 |

### Output

```text
Intern rewarded successfully
```

### Balance Output

```text
200
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

1. Created ERC20-style Task Completion Token smart contract
2. Implemented owner-controlled reward distribution
3. Defined token balances using mappings
4. Compiled the contract using Remix IDE
5. Connected MetaMask wallet with SecureChain Mainnet
6. Deployed the contract successfully
7. Tested token reward and balance verification

---

# Learning Outcomes

- Learned ERC20 token concepts
- Understood mappings and balance tracking
- Explored access control in Solidity
- Learned blockchain-based reward systems
- Understood token distribution mechanisms

---
