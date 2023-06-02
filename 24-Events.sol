// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Event {
    event Log(string message, uint val);

    //indexed params up to 3 index
    event IndexedLog(address indexed sender, uint val);

    function example() external {
        emit Log("foo", 123);
        emit IndexedLog(msg.sender, 456);
    }

    event Message(address indexed _from, address indexed _to, string message);

    function sendMessage(address _to, string calldata message) external {
        emit Message(msg.sender, _to, message);
    }
}