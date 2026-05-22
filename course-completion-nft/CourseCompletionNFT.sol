// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract CourseCompletionNFT {

    string public name = "Course Completion NFT";
    string public symbol = "CCNFT";

    uint public nextTokenId;

    address public owner;

    mapping(uint => address) public nftOwner;
    mapping(address => uint) public balanceOf;
    mapping(uint => string) public courseData;

    constructor() {
        owner = msg.sender;
    }

    function mintCourseNFT(
        address student,
        string memory courseName
    ) public {

        require(
            msg.sender == owner,
            "Only owner can mint NFTs"
        );

        uint tokenId = nextTokenId;

        nftOwner[tokenId] = student;

        balanceOf[student] += 1;

        courseData[tokenId] = courseName;

        nextTokenId++;
    }

    function getCourse(uint tokenId)
        public
        view
        returns(string memory)
    {
        return courseData[tokenId];
    }
}