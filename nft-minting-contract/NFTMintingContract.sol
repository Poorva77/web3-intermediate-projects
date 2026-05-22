// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract NFTMintingContract {

    string public name = "Custom NFT Collection";
    string public symbol = "CNFT";

    uint public nextTokenId;

    address public owner;

    mapping(uint => address) public nftOwner;
    mapping(address => uint) public balanceOf;
    mapping(uint => string) public tokenURI;

    constructor() {
        owner = msg.sender;
    }

    function mintNFT(
        address recipient,
        string memory metadataURI
    ) public {

        require(
            msg.sender == owner,
            "Only owner can mint NFTs"
        );

        uint tokenId = nextTokenId;

        nftOwner[tokenId] = recipient;

        balanceOf[recipient] += 1;

        tokenURI[tokenId] = metadataURI;

        nextTokenId++;
    }

    function getNFTMetadata(uint tokenId)
        public
        view
        returns(string memory)
    {
        return tokenURI[tokenId];
    }
}