# Intern Management Web3 DApp

## Overview

This project demonstrates a simple Web3 DApp built using React.js, Node.js, Express.js, and MetaMask.

The application allows interns to connect their Ethereum wallet and register themselves through a React frontend connected to a backend API.

---

## Technologies Used

- React.js
- Node.js
- Express.js
- Axios
- MetaMask
- JavaScript

---

## Features

- Connect MetaMask wallet
- Display connected wallet address
- Register interns
- Frontend-backend integration
- REST API communication

---

## Project Structure

```text
intern-management-dapp/
│
├── backend/
├── frontend/
├── README.md
└── screenshots/
```

---

## Backend Setup

```bash
npm install express cors
node server.js
```

Runs on:

```text
http://localhost:5000
```

---

## Frontend Setup

```bash
npm install
npm install axios
npm start
```

Runs on:

```text
http://localhost:3000
```

---

## Workflow

1. User connects MetaMask wallet.
2. Wallet address is displayed.
3. User enters intern details.
4. React sends data to backend API.
5. Backend stores intern information.

---

## Example

### Input

```text
Name: Poorva
Wallet: 0x123456...
```

### Output

```text
Intern Registered
```

---

## Learning Outcomes

- React frontend development
- Express backend development
- REST API integration
- MetaMask wallet connection
- Basic Web3 DApp architecture

---

## Conclusion

Successfully built an Intern Management Web3 DApp that connects a React frontend with a Node.js backend and integrates MetaMask wallet connectivity.