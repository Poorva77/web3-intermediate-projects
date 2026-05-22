// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract TaskCompletionToken {

    string public name = "Task Completion Token";
    string public symbol = "TCT";
    uint public totalSupply = 500000;

    address public owner;

    mapping(address => uint) public balances;

    constructor() {
        owner = msg.sender;
        balances[msg.sender] = totalSupply;
    }

    function rewardIntern(address intern, uint amount) public {

        require(
            msg.sender == owner,
            "Only owner can reward tokens"
        );

        require(
            balances[owner] >= amount,
            "Insufficient owner balance"
        );

        balances[owner] -= amount;
        balances[intern] += amount;
    }

    function checkBalance(address user)
        public
        view
        returns(uint)
    {
        return balances[user];
    }
}