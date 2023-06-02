// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

//The Payable keyword add functionality to send and receive Ether
contract Payable {
    address payable public owner;

    constructor() {
        owner = payable(msg.sender);
    }

    function deposit() external payable {}

    function getBalance() external view returns (uint256) {
        return address(this).balance;
    }
}
