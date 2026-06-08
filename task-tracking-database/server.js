const express = require("express");
const mongoose = require("mongoose");

const app = express();

app.use(express.json());

mongoose.connect(
    "mongodb://localhost:27017/taskTrackingDB"
)
.then(() => {
    console.log("MongoDB Connected");
})
.catch((err) => {
    console.log(err);
});

const taskSchema = new mongoose.Schema({
    title: String,
    description: String,
    assignedTo: String,
    status: String,
    submissionDate: Date
});

const Task = mongoose.model(
    "Task",
    taskSchema
);

app.get("/", (req, res) => {
    res.send("Task Tracking Database Connected");
});

app.listen(3000, () => {
    console.log("Server running on port 3000");
});