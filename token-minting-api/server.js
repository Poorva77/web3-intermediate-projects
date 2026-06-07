const express = require("express");

const app = express();

app.use(express.json());

const users = [];

/*
GET API
Home Route
*/

app.get("/", (req, res) => {
    res.send("Token Minting API Running");
});

/*
POST API
Mint Tokens
*/

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

/*
GET API
Fetch Minted Tokens
*/

app.get("/tokens", (req, res) => {
    res.json(users);
});

/*
Server
*/

const PORT = 3000;

app.listen(PORT, () => {
    console.log(`Server running on port ${PORT}`);
});