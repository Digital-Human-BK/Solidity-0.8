// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

/*
Fallback is executed when
-function doesn't exist
-directly send ETH
*/

contract Fallback {
    event Log(string funcName, address sender, uint256 value, bytes data);

    //fallback is executed when msg.data is not empty and if receive() is not defivned
    fallback() external payable {
        emit Log("fallback", msg.sender, msg.value, msg.data);
    }

    receive() external payable {
        emit Log("receive", msg.sender, msg.value, "");
    }
}
