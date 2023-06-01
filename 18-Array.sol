// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Array {
    uint256[] public nums = [1, 2, 3];
    // fixed size array
    uint256[3] public numsFixed = [4, 5, 6];

    function examples() external {
        nums.push(4); // [1, 2, 3, 4]
        uint256 x = nums[1]; // to get a value = 2
        nums[2] = 666; // [1, 2, 666, 4]
        delete nums[1]; // [1, 0, 666, 4] doesnt remove the element but defaults it
        nums.pop(); // [1, 0, 666]
        uint256 lenght = nums.length;

        //create array in memory, only fixed lenght (5)
        uint256[] memory a = new uint256[](5);
        a[1] = 123;
    }

    function returnArray() external view returns (uint256[] memory) {
        //return an array from functions is no reccomended, the bigger the array the more gas will be used
        return nums;
    }
}
