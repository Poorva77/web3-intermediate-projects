const express = require("express");
const cors = require("cors");

const app = express();

app.use(cors());
app.use(express.json());

const interns = [];

app.get("/interns", (req, res) => {
    res.json(interns);
});

app.post("/register", (req, res) => {

    interns.push(req.body);

    res.json({
        message: "Intern Registered"
    });
});

app.listen(5000, () => {
    console.log("Server running on port 5000");
});