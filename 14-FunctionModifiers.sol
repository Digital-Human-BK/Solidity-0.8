// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

// Function modifiers allow us to reuse code before/after function
// 3 types: Basic, inputs, sandwich

contract FunctionModifier {
    bool public paused;
    uint256 public count;

    //basic modifier
    modifier whenNotPaused() {
        require(!paused, "paused");
        // this line with the underscore tells SOlidity to execure the wrapped function
        _;
    }

    // iNtead of having require repeatedly we can use modifier and save gas
    function increment() external whenNotPaused {
        // require(!paused, "paused");
        count++;
    }

    function decrement() external whenNotPaused {
        // require(!paused, "paused");
        count--;
    }

    //example with input
    modifier capInput(uint256 _x) {
        require(_x < 100, " X greater than 100");
        _;
    }

    function incrementBy(uint256 _x) external whenNotPaused capInput(_x) {
        count += _x;
    }

    //sandwich modifier example
    modifier sandwich() {
        //runs before the main function
        count += 10;

        //main function execution
        _;

        //runs asfter main function
        count *= 2;
    }

    function exampleSandwich() external sandwich {
        count++;
    }
}
