// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Counter {
    uint public count;

    function increment() external {
        count++;
    }

    function decrement() external {
        count--;
    }
}