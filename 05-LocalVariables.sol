// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract LocalVariables {
    //State variables
    uint public i;
    bool public b;
    address public myAddress;

    function foo() external {
        // Local variables
        uint x = 1;
        bool f = false;

        x+= 2;
        f = true;

        i = 123;
        b = true;
        myAddress = address(1);

    }
}