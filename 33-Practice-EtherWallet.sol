// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract EtherWallet {
    address payable public owner;

    constructor() {
        owner = payable(msg.sender);
    }

    receive() external payable {}

    function withdraw(uint256 _amount) external {
        require(msg.sender == owner, "caller is not owner");
        // owner.transfer(_amount);
        //replacinst the state variable "owner" with msg.sender should save a bit of gas
        payable(msg.sender).transfer(_amount);

        // (bool sent, ) = msg.sender.call{value: _amount}("");
        // require(sent, "Failed to send Ether");
    }

    function getBalance() external view returns (uint256) {
        return address(this).balance;
    }
}
