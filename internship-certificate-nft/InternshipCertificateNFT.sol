// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract InternshipCertificateNFT {

    string public name = "Internship Certificate NFT";
    string public symbol = "ICNFT";

    uint public nextTokenId;

    address public owner;

    mapping(uint => address) public nftOwner;
    mapping(address => uint) public balanceOf;
    mapping(uint => string) public certificateData;

    constructor() {
        owner = msg.sender;
    }

    function mintCertificate(
        address student,
        string memory certificateName
    ) public {

        require(
            msg.sender == owner,
            "Only owner can mint certificates"
        );

        uint tokenId = nextTokenId;

        nftOwner[tokenId] = student;

        balanceOf[student] += 1;

        certificateData[tokenId] = certificateName;

        nextTokenId++;
    }

    function getCertificate(uint tokenId)
        public
        view
        returns(string memory)
    {
        return certificateData[tokenId];
    }
}