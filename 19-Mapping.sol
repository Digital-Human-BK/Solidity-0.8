// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Mapping {
    mapping(address => uint) public balances;
    mapping(address => mapping(address => bool)) public isFriend;

    function example() external {
        balances[msg.sender] = 1;
        uint balance = balances[msg.sender];
        //uninitialized properties will have default values
        uint balance2 = balances[address(1)]; // defaults to 0
        balances[msg.sender] += 2; // 3
        delete balances[msg.sender]; // 0

        isFriend[msg.sender][address(this)] = true;
    }
}