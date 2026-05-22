// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract AttendanceToken {

    string public name = "Attendance Token";
    string public symbol = "ATK";
    uint public totalSupply = 300000;

    address public owner;

    mapping(address => uint) public balances;
    mapping(address => bool) public markedPresent;

    constructor() {
        owner = msg.sender;
        balances[msg.sender] = totalSupply;
    }

    function markAttendance(address student) public {

        require(
            msg.sender == owner,
            "Only owner can mark attendance"
        );

        require(
            !markedPresent[student],
            "Attendance already marked"
        );

        markedPresent[student] = true;

        balances[owner] -= 10;
        balances[student] += 10;
    }

    function checkBalance(address user)
        public
        view
        returns(uint)
    {
        return balances[user];
    }
}