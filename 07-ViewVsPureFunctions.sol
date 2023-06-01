// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract ViewVsPureFunctions {
    uint256 public num = 1;

    // This func doesn't modify any state variable or write anything to
    // the blockchain(read-only func) in addition reads from the state
    function viewFunc() external view returns (uint256) {
        return num;
    }

    // This func doesn't modify any state variable or write anything to
    // the blockchain(read-only func) in addition DOESN'N read any data
    //from a state variable, smart contracts or the blockchain
    function pureFunc() external pure returns (uint256) {
        return 1;
    }
}
