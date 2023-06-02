// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract A {
    string public name;

    constructor(string memory _name) {
        name = _name;
    }
}

contract B {
    string public text;

    constructor(string memory _text) {
        text = _text;
    }
}

//Ways of initializing the parent constructor

//if we know the parameters use static unputs
contract C is A("Mike"), B("text") {

}

//dynamic inputs
contract D is A, B {
    constructor(string memory _name, string memory _text) A(_name) B(_text) {}
}

//can be combination of both syntaxes
contract DD is A("Mike"), B {
    constructor(string memory _text) B(_text) {}
}

// Order of constructors called:
// 1. A
// 2. B
// 3. D1
contract D1 is A, B {
    constructor() A("A was called") B("B was called") {}
}
