// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract DataLocations {
    struct MyStruct {
        uint256 foo;
        string text;
    }

    mapping(address => MyStruct) public myStructs;

    function example(uint256[] calldata y, string calldata s)
        external
        returns (uint256[] memory)
    {
        myStructs[msg.sender] = MyStruct({foo: 123, text: "bar"});
        //use storage to modify and save dymanic data
        MyStruct storage myStruct = myStructs[msg.sender];
        myStruct.text = "foo";

        //if only need to read data or modifying it without saving in into the blockchain use mmeory
        MyStruct memory readOnly = myStructs[msg.sender];
        readOnly.foo = 456;

        _internal(y);

        uint256[] memory memArr = new uint256[](3);
        memArr[0] = 234;
        return memArr;
    }

    //for function inputs use calldata to save gas
    //by using calldata there is once less copy of the uint[] parameter
    function _internal(uint256[] calldata y) private pure {
        uint256 x = y[0];
    }
}
