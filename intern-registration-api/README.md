# Intern Registration REST API

## Overview

This project demonstrates a simple Intern Registration REST API built using Node.js and Express.js.

The API allows users to:
- register interns
- fetch all registered interns
- handle JSON-based requests and responses

---

# Technologies Used

| Technology | Purpose |
|---|---|
| Node.js | Backend runtime environment |
| Express.js | REST API framework |
| JavaScript | Application logic |

---

# Features

- REST API development
- Intern registration system
- JSON request handling
- API routing using Express
- Backend server setup

---

# Project Structure

```text
intern-registration-api/
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
| POST | `/register` | Register new intern |
| GET | `/interns` | Fetch all interns |

---

# API Code

```javascript
const express = require("express");

const app = express();

app.use(express.json());

const interns = [];

app.get("/", (req, res) => {
    res.send("Intern Registration API Running");
});

app.post("/register", (req, res) => {

    const { name, email, domain } = req.body;

    const newIntern = {
        id: interns.length + 1,
        name,
        email,
        domain
    };

    interns.push(newIntern);

    res.status(201).json({
        message: "Intern Registered Successfully",
        intern: newIntern
    });
});

app.get("/interns", (req, res) => {
    res.json(interns);
});

const PORT = 3000;

app.listen(PORT, () => {
    console.log(`Server running on port ${PORT}`);
});
```

---

# Request and Response Example

## Register Intern

### Request

```json
{
  "name": "Poorva",
  "email": "poorva@example.com",
  "domain": "Blockchain"
}
```

### Response

```json
{
  "message": "Intern Registered Successfully",
  "intern": {
    "id": 1,
    "name": "Poorva",
    "email": "poorva@example.com",
    "domain": "Blockchain"
  }
}
```

---

# Fetch All Interns

### Response

```json
[
  {
    "id": 1,
    "name": "Poorva",
    "email": "poorva@example.com",
    "domain": "Blockchain"
  }
]
```

---

# Learning Outcomes

- Learned REST API fundamentals
- Understood Express.js routing
- Learned JSON request handling
- Explored backend server development
- Learned API testing using Postman

---

# Screenshots

Add screenshots inside the `screenshots/` folder showing:
- VS Code Project
- API Running
- POST API Testing
- GET API Response
- Terminal Output