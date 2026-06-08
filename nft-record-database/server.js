const express = require("express");
const mongoose = require("mongoose");

const app = express();

app.use(express.json());

mongoose.connect(
    "mongodb://localhost:27017/nftRecordDB"
)
.then(() => {
    console.log("MongoDB Connected");
})
.catch((err) => {
    console.log(err);
});

const nftSchema = new mongoose.Schema({
    nftName: String,
    tokenId: Number,
    ownerAddress: String,
    metadataURI: String,
    collectionName: String,
    mintDate: Date
});

const NFT = mongoose.model(
    "NFT",
    nftSchema
);

app.get("/", (req, res) => {
    res.send("NFT Record Database Connected");
});

app.listen(3000, () => {
    console.log("Server running on port 3000");
});