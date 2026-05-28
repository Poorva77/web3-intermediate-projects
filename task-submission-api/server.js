const express = require("express");

const app = express();

app.use(express.json());

const submissions = [];

/*
GET API
Home Route
*/

app.get("/", (req, res) => {
    res.send("Task Submission API Running");
});

/*
POST API
Submit Task
*/

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

/*
GET API
Fetch All Submitted Tasks
*/

app.get("/submissions", (req, res) => {
    res.json(submissions);
});

/*
Server
*/

const PORT = 3000;

app.listen(PORT, () => {
    console.log(`Server running on port ${PORT}`);
});