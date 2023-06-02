// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

/* 
There are 3 ways to sned Ether
1. trasfer - 2300 gas, if the send fails the whole function fails/reverts
2. send - 2300 gas, return bool value that indicates if the send was successfull or not
3. call - all gas, return bool and data
*/

contract SendEther {
    constructor() payable {}

    // fallback() external payable {

    // }

    receive() external payable {
        //this way contract is only receiving ether and if you try to call function
        //that doesn't exist inside this contract we don't have a fallback fn so your
        //function call will fail
    }

    function sendViaTransfer(address payable _to) external payable {
        _to.transfer(123);
    }

    function sendViaSend(address payable _to) external payable {
        bool sent = _to.send(123);
        require(sent, "send failed!");
    }

    function snedViaCall(address payable _to) external payable {
        (bool success, bytes memory data) = _to.call{value: 123}("");
        require(success, "call failed");
    }
}

contract EthReceiver {
    event Log(uint256 amount, uint256 gas);

    receive() external payable {
        emit Log(msg.value, gasleft());
    }
}
