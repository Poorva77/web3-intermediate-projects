# Task Submission REST API

## Overview

This project demonstrates a Task Submission REST API built using Node.js and Express.js.

The API allows interns to:
- submit internship tasks
- store task details
- fetch submitted task records

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
- Internship task submission system
- JSON request handling
- Express.js routing
- Backend server setup

---

# Project Structure

```text
task-submission-api/
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
| POST | `/submit-task` | Submit internship task |
| GET | `/submissions` | Fetch all submitted tasks |

---

# API Code

```javascript
const express = require("express");

const app = express();

app.use(express.json());

const submissions = [];

app.get("/", (req, res) => {
    res.send("Task Submission API Running");
});

app.post("/submit-task", (req, res) => {

    const {
        internName,
        taskTitle,
        githubLink
    } = req.body;

    const newSubmission = {
        id: submissions.length + 1,
        internName,
        taskTitle,
        githubLink
    };

    submissions.push(newSubmission);

    res.status(201).json({
        message: "Task Submitted Successfully",
        submission: newSubmission
    });
});

app.get("/submissions", (req, res) => {
    res.json(submissions);
});

const PORT = 3000;

app.listen(PORT, () => {
    console.log(`Server running on port ${PORT}`);
});
```

---

# Request and Response Example

## Submit Task

### Request

```json
{
  "internName": "Poorva",
  "taskTitle": "ERC20 Internship Token",
  "githubLink": "https://github.com/your-repo"
}
```

### Response

```json
{
  "message": "Task Submitted Successfully",
  "submission": {
    "id": 1,
    "internName": "Poorva",
    "taskTitle": "ERC20 Internship Token",
    "githubLink": "https://github.com/your-repo"
  }
}
```

---

# Fetch Submitted Tasks

### Response

```json
[
  {
    "id": 1,
    "internName": "Poorva",
    "taskTitle": "ERC20 Internship Token",
    "githubLink": "https://github.com/your-repo"
  }
]
```

---

# Learning Outcomes

- Learned REST API development
- Understood Express.js routing
- Learned JSON request handling
- Explored backend API development
- Learned API testing using Postman

---

# Screenshots

Add screenshots inside the `screenshots/` folder showing:
- POST API Testing
- GET API Response
