// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

// 3 ways of throwing an Error - require, revert, assert
// Errors result in gas refund and state updates are reverted
// custom error save gas

contract Errors {
    function testRequire(uint256 _i) public pure {
        // The longer the error message is, the more gas will be used
        require(_i < 10, "_i is greater than 10");
        //rest of code
    }

    function testRevert(uint256 _i) public pure {
        if (_i > 10) {
            revert("_i is greater than 10");
        }
        //rest of code
    }

    uint256 public num = 1;

    function testAssert() public view {
        // use assert for cinditions that should always be equal to true
        assert(num == 1);
    }

    //gas refund example
    function exampleRefund(uint i) public {
        num+=i;

        require(i < 10);
        //In this code the state variable will be updated but the check will fail
        // The state change will be reverted and if we send 1000 gas for the operation,
        // and we used only 100 the rest 900 will be refunded

    }

    error MyError(address caller, uint i);

    function testCustomError(uint _i) public view {
        if(_i > 10) {
            revert MyError(msg.sender, _i);
        }
    }
}
