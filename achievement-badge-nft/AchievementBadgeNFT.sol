// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract AchievementBadgeNFT {

    string public name = "Achievement Badge NFT";
    string public symbol = "ABNFT";

    uint public nextTokenId;

    address public owner;

    mapping(uint => address) public nftOwner;
    mapping(address => uint) public balanceOf;
    mapping(uint => string) public badgeData;

    constructor() {
        owner = msg.sender;
    }

    function mintBadge(
        address user,
        string memory badgeName
    ) public {

        require(
            msg.sender == owner,
            "Only owner can mint badges"
        );

        uint tokenId = nextTokenId;

        nftOwner[tokenId] = user;

        balanceOf[user] += 1;

        badgeData[tokenId] = badgeName;

        nextTokenId++;
    }

    function getBadge(uint tokenId)
        public
        view
        returns(string memory)
    {
        return badgeData[tokenId];
    }
}