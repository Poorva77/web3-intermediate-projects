# Task Tracking Database

A simple backend project built using **Node.js**, **Express.js**, **MongoDB**, and **Mongoose**. This project establishes a connection between a Node.js application and a MongoDB database and provides a foundation for tracking internship tasks and their status.

---

## Technologies Used

- Node.js
- Express.js
- MongoDB Community Server
- MongoDB Compass
- Mongoose

---

## Project Setup

### 1. Initialize Node.js Project

```bash
npm init -y
```

### 2. Install Dependencies

```bash
npm install express mongoose
```

### 3. Create MongoDB Database

Using MongoDB Compass:

- Connect to `mongodb://localhost:27017`
- Create database: `taskTrackingDB`
- Create collection: `tasks`

---

## MongoDB Connection

The application connects to MongoDB using Mongoose:

```javascript
mongoose.connect("mongodb://localhost:27017/taskTrackingDB")
```

---

## Project Structure

```text
task-tracking-database/
│
├── node_modules/
├── package.json
├── package-lock.json
└── server.js
```

---

## Task Schema

The database stores task-related information:

```javascript
const taskSchema = new mongoose.Schema({
    title: String,
    description: String,
    assignedTo: String,
    status: String,
    submissionDate: Date
});
```

Fields:

| Field | Type |
|---------|---------|
| title | String |
| description | String |
| assignedTo | String |
| status | String |
| submissionDate | Date |

---

## Server Configuration

The Express server runs on port **3000**.

```javascript
app.listen(3000, () => {
    console.log("Server running on port 3000");
});
```

---

## API Endpoint

### Home Route

**GET /**

Returns:

```text
Task Tracking Database Connected
```

Implementation:

```javascript
app.get("/", (req, res) => {
    res.send("Task Tracking Database Connected");
});
```

---

## Running the Project

Start the server:

```bash
node server.js
```

Expected Output:

```text
MongoDB Connected
Server running on port 3000
```

Open:

```text
http://localhost:3000
```

Output:

```text
Task Tracking Database Connected
```

---

## Sample Task Document

```json
{
  "title": "ERC20 Token Contract",
  "description": "Deploy ERC20 token on SecureChain Mainnet",
  "assignedTo": "Poorva",
  "status": "Completed",
  "submissionDate": "2026-06-08"
}
```

---

## Learning Outcomes

Through this project, I learned:

- How to connect Node.js with MongoDB
- How to create a MongoDB database and collection
- How to define schemas using Mongoose
- How to structure task-related data
- How to run an Express server
- How to work with MongoDB Compass

---

## Conclusion

This project successfully establishes a Task Tracking Database using MongoDB and Mongoose. It serves as a foundation for building a complete task management system capable of storing, updating, and monitoring internship tasks.