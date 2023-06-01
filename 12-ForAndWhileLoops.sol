// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract ForAndWhileLoop {
    // In Solidity, the number of loops a function will run must be considered
    // the bigger the number of loops, the more gas it will use
    // Keep the number of loops small = LOW gas cost
    function loops() external pure {
        //for loop
        for(uint i = 0; i < 10; i++) {
            if(i == 3) {
                continue;
            }

            if(i == 5) {
                break;
            }
        }
        
        //while loop
        uint j = 0;
        while (j < 10) {
            j++;
        }
    }
}