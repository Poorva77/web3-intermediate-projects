const express = require("express");

const app = express();

app.use(express.json());

const interns = [];

/*
GET API
Home Route
*/

app.get("/", (req, res) => {
    res.send("Intern Registration API Running");
});

/*
POST API
Register Intern
*/

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

/*
GET API
Fetch All Interns
*/

app.get("/interns", (req, res) => {
    res.json(interns);
});

/*
Server
*/

const PORT = 3000;

app.listen(PORT, () => {
    console.log(`Server running on port ${PORT}`);
});