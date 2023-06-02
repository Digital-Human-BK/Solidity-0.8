// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

//Visibility
//private - only inside contract that defines it
//internal - only inside contract and child contracts
//public - inside and outside contract
// external - only from ouside contract

contract VisibilityParent {
    uint256 private x = 0;
    uint256 internal y = 1;
    uint256 public z = 2;

    function privateFunc() private pure returns (uint256) {
        return 0;
    }

    function internalFunc() internal pure returns (uint256) {
        return 100;
    }

    function publicFunc() public pure returns (uint256) {
        return 200;
    }

    function externalFunc() external pure returns (uint256) {
        return 300;
    }

    function examples() external view {
        x + y + z;

        privateFunc();
        internalFunc();
        publicFunc();

        // external functions are ment to be called only from other contract outside current contract
        //there is a hack using this.externalFunc() but its gas ineficient
        // externalFunc();
    }
}

contract VisibilityChild is VisibilityParent {
    function example2() external view {
        //no access to x or privateFunc()
        y + z;
        internalFunc();
        publicFunc();

        //externalFunc() can't be accessed here, technically this contract inherits and its the same as
        //definign the extrnalFunc in here
    }
}
