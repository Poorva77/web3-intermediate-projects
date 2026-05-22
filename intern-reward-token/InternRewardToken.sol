// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract InternRewardToken {

    string public name = "Intern Reward Token";
    string public symbol = "IRT";
    uint public totalSupply = 1000000;

    address public owner;

    mapping(address => uint) public balances;

    constructor() {
        owner = msg.sender;
        balances[msg.sender] = totalSupply;
    }

    function transfer(address recipient, uint amount) public {

        require(
            balances[msg.sender] >= amount,
            "Insufficient balance"
        );

        balances[msg.sender] -= amount;
        balances[recipient] += amount;
    }

    function checkBalance(address user)
        public
        view
        returns(uint)
    {
        return balances[user];
    }
}