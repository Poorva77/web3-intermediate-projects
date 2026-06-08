# Intern Profile Database

A simple backend project built using **Node.js**, **Express.js**, **MongoDB**, and **Mongoose**. This project establishes a connection between a Node.js application and a MongoDB database and serves as the foundation for storing and managing intern profile information.

---

## 🚀 Technologies Used

- Node.js
- Express.js
- MongoDB Community Server
- MongoDB Compass
- Mongoose

---

## 📋 Project Setup

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
- Create a database named `internProfileDB`
- Create a collection named `profiles`

---

## 🔗 MongoDB Connection

The application connects to the local MongoDB database using Mongoose:

```javascript
mongoose.connect("mongodb://localhost:27017/internProfileDB")
```

---

## 📁 Project Structure

```text
intern-profile-database/
│
├── node_modules/
├── package.json
├── package-lock.json
└── server.js
```

---

## 🖥️ Server Configuration

The Express server runs on port **3000**.

```javascript
app.listen(3000, () => {
    console.log("Server running on port 3000");
});
```

---

## 🌐 API Endpoint

### Home Route

**GET /**

Returns:

```text
Intern Profile Database Connected
```

Implementation:

```javascript
app.get("/", (req, res) => {
    res.send("Intern Profile Database Connected");
});
```

---

## ▶️ Running the Project

Start the server using:

```bash
node server.js
```

Expected Output:

```text
MongoDB Connected
Server running on port 3000
```

Open your browser and visit:

```text
http://localhost:3000
```

Output:

```text
Intern Profile Database Connected
```

---

## 🎯 Learning Outcomes

Through this project, I learned:

- How to initialize a Node.js project
- How to install and manage dependencies using npm
- How to connect Node.js with MongoDB using Mongoose
- How to create and run an Express server
- How to create basic API routes
- How to work with MongoDB Compass and local databases

---

## 🏁 Conclusion

This project successfully establishes a connection between a Node.js application and MongoDB. It provides a strong foundation for building a complete Intern Profile Management System with features such as creating, updating, retrieving, and deleting intern profiles.