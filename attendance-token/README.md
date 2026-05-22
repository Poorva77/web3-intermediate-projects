# Attendance Token (ERC20 Style)

## Overview

This project demonstrates an ERC20-style Attendance Token smart contract deployed on SecureChain Mainnet (SCAI) using Solidity, Remix IDE, and MetaMask.

The contract implements a blockchain-based attendance reward mechanism where students or interns receive tokens when attendance is marked.

---

# What is an Attendance Reward Token?

Attendance reward tokens are blockchain-based digital tokens distributed for participation or attendance.

This concept can be used in:
- educational platforms
- internship programs
- event participation systems
- online learning platforms
- decentralized reward systems

---

# Smart Contract Code

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract AttendanceToken {

    string public name = "Attendance Token";
    string public symbol = "ATK";
    uint public totalSupply = 300000;

    address public owner;

    mapping(address => uint) public balances;
    mapping(address => bool) public markedPresent;

    constructor() {
        owner = msg.sender;
        balances[msg.sender] = totalSupply;
    }

    function markAttendance(address student) public {

        require(
            msg.sender == owner,
            "Only owner can mark attendance"
        );

        require(
            !markedPresent[student],
            "Attendance already marked"
        );

        markedPresent[student] = true;

        balances[owner] -= 10;
        balances[student] += 10;
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
| `totalSupply` | Total supply of attendance tokens |
| `balances` | Tracks wallet token balances |
| `markedPresent` | Tracks attendance status |
| `markAttendance()` | Rewards attendance tokens |
| `checkBalance()` | Returns wallet balance |

---

# Functionalities

- Create attendance reward token
- Mark attendance on blockchain
- Reward users with attendance tokens
- Prevent duplicate attendance marking
- Track token balances

---

# Input and Output Example

## Mark Attendance

### Input

| Field | Example |
|---|---|
| Student Address | Wallet Address |

### Output

```text
Attendance marked successfully
```

### Student Balance

```text
10
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

1. Created Attendance Token smart contract
2. Implemented attendance tracking using mappings
3. Added blockchain-based reward mechanism
4. Compiled the contract using Remix IDE
5. Connected MetaMask wallet with SecureChain Mainnet
6. Deployed the smart contract successfully
7. Tested attendance marking and balance verification

---

# Learning Outcomes

- Learned ERC20-style token systems
- Understood attendance tracking using mappings
- Explored reward distribution in Solidity
- Learned blockchain-based participation systems
- Understood smart contract access control

---

