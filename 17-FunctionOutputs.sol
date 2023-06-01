// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract FunctionOutputs {
    //output types
    function returnMany() public pure returns (uint256, bool) {
        return (1, true);
    }

    //output names
    function returnNamed() public pure returns (uint256 x, bool b) {
        return (1, true);
    }

    //assigned outputs
    function assigned() public pure returns (uint256 x, bool b) {
        x = 1;
        b = true;
    }

    function destructingAssignments()
        public
        pure
        returns (
            uint256,
            bool,
            bool
        )
    {
        (uint256 x, bool b) = returnMany();
        //to ommit output just provide a comma
        (, bool _b) = returnMany();
        return (x, b, _b);
    }
}
