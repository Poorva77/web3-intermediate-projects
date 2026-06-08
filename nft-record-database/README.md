# NFT Record Database

A simple backend project built using **Node.js**, **Express.js**, **MongoDB**, and **Mongoose**. This project establishes a connection between a Node.js application and a MongoDB database and provides a foundation for storing and managing NFT records.

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
- Create database: `nftRecordDB`
- Create collection: `nfts`

---

## MongoDB Connection

The application connects to MongoDB using Mongoose:

```javascript
mongoose.connect("mongodb://localhost:27017/nftRecordDB")
```

---

## Project Structure

```text
nft-record-database/
│
├── node_modules/
├── package.json
├── package-lock.json
└── server.js
```

---

## NFT Schema

The database stores NFT-related information:

```javascript
const nftSchema = new mongoose.Schema({
    nftName: String,
    tokenId: Number,
    ownerAddress: String,
    metadataURI: String,
    collectionName: String,
    mintDate: Date
});
```

Fields:

| Field | Type |
|---------|---------|
| nftName | String |
| tokenId | Number |
| ownerAddress | String |
| metadataURI | String |
| collectionName | String |
| mintDate | Date |

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
NFT Record Database Connected
```

Implementation:

```javascript
app.get("/", (req, res) => {
    res.send("NFT Record Database Connected");
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
NFT Record Database Connected
```

---

## Sample NFT Document

```json
{
  "nftName": "Internship Certificate",
  "tokenId": 1,
  "ownerAddress": "0x123456789ABCDEF",
  "metadataURI": "ipfs://certificate-metadata",
  "collectionName": "Internship Certificates",
  "mintDate": "2026-06-08"
}
```

---

## Learning Outcomes

Through this project, I learned:

- How to connect Node.js with MongoDB
- How to create NFT data schemas using Mongoose
- How to structure blockchain-related data
- How to run an Express server
- How to work with MongoDB Compass
- How NFT information can be stored in databases

---

## Conclusion

This project successfully establishes an NFT Record Database using MongoDB and Mongoose. It serves as a foundation for building NFT management systems capable of storing ownership, metadata, token IDs, and collection information.