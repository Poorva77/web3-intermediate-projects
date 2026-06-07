# Token Minting REST API

## Overview

This project demonstrates a Token Minting REST API built using Node.js and Express.js.

The API simulates blockchain token minting by allowing users to mint tokens and store token-related information.

---

# Technologies Used

| Technology | Purpose |
|---|---|
| Node.js | Backend runtime |
| Express.js | REST API framework |
| JavaScript | Backend logic |

---

# Features

- REST API development
- Token minting simulation
- JSON request handling
- Express.js routing
- Backend server setup

---

# Project Structure

```text
token-minting-api/
│
├── package.json
├── server.js
├── README.md
└── screenshots/
```

---

# Installation

## Step 1: Clone Repository

```bash
git clone YOUR_GITHUB_REPOSITORY_LINK
```

---

## Step 2: Install Dependencies

```bash
npm install
```

---

## Step 3: Run Server

```bash
node server.js
```

Output:

```text
Server running on port 3000
```

---

# API Endpoints

| Method | Endpoint | Description |
|---|---|---|
| GET | `/` | Test API |
| POST | `/mint-token` | Mint tokens |
| GET | `/tokens` | Fetch minted token records |

---

# API Code

```javascript
const express = require("express");

const app = express();

app.use(express.json());

const users = [];

app.get("/", (req, res) => {
    res.send("Token Minting API Running");
});

app.post("/mint-token", (req, res) => {

    const { userName, walletAddress, amount } = req.body;

    const tokenData = {
        id: users.length + 1,
        userName,
        walletAddress,
        amount
    };

    users.push(tokenData);

    res.status(201).json({
        message: "Tokens Minted Successfully",
        tokenData
    });
});

app.get("/tokens", (req, res) => {
    res.json(users);
});

const PORT = 3000;

app.listen(PORT, () => {
    console.log(`Server running on port ${PORT}`);
});
```

---

# Request and Response Example

## Mint Tokens

### Request

```json
{
  "userName": "Poorva",
  "walletAddress": "0x123abc456def",
  "amount": 100
}
```

### Response

```json
{
  "message": "Tokens Minted Successfully",
  "tokenData": {
    "id": 1,
    "userName": "Poorva",
    "walletAddress": "0x123abc456def",
    "amount": 100
  }
}
```

---

# Fetch Minted Tokens

### Response

```json
[
  {
    "id": 1,
    "userName": "Poorva",
    "walletAddress": "0x123abc456def",
    "amount": 100
  }
]
```

---

# Learning Outcomes

- Learned REST API development
- Understood Express.js routing
- Learned JSON request handling
- Explored token minting concepts
- Learned backend API testing using Postman

---

# Screenshots

Add screenshots inside the `screenshots/` folder showing:
- VS Code Project
- API Running
- POST API Testing
- GET API Response
- Terminal Output