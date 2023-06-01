// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract ValueTypes {
    bool public b = true;
    uint public u = 123; // uint = uint256 to 2**256 - 1
                         //        uint8 0 to 2**8 - 1
                         //        uint16 0 to 2**16 - 1

    int public  i = -1;  // int = int256 -2**255 to 2**255 -1
                         //       int128 -2**127 to 2**127 -1
    // To check min and max values
    int public minInt = type(int).min;
    int public maxInt = type(int).max;

    address public addr = 0x4A87bF3839D4a916fe1a2183dB87E77758B355B3;

    bytes32 public b32 = 0x626c756500000000000000000000000000000000000000000000000000000000;

}