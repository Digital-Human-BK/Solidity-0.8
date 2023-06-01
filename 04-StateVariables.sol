// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract StateVariables {
    //STATE VARIABLE: Variables declared in the top level of a conrtact will be stored on the blockchain
    uint public myUint = 123;

    function foo() external pure {
        // LOCAL VARIABLE: Variable declared inside a function and they exist only while the function is executing
        uint nonStateVariable = 456;
    }
}