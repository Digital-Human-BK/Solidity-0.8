// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract GlobalVariables {
    function globalVars() external view returns (address, uint, uint) {
        // The following var are the one we mostly gonna use

        // sender stores the address that called this function
        address sender = msg.sender;

        // unit timestamp of when the function was called
        uint timestamp = block.timestamp;

        // stores the current block number
        uint blockNum = block.number;

        return(sender, timestamp, blockNum);
    }
}