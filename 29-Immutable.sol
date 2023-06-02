// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

//Immutable variables are like constants, exept you can intialize them only once
//when the contract is deployed 
contract Immutable {
    // 45718 gas
    // address public owner = msg.sender;

    // 43585 gas by using immutable
    address public immutable owner = msg.sender;

    uint256 public x;

    function foo() external {
        require(msg.sender == owner);
        x += 1;
    }
}
