// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

//Constructors are called only once when the contract is deployed
//they are mainly used to initialize state variables

contract Constructor {
    address public owner;
    uint public x;

    constructor(uint _x) {
        owner = msg.sender;
        x = _x;
    }
}