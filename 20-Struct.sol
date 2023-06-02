// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Structs {
    struct Car {
        string model;
        uint256 year;
        address owner;
    }

    Car public car;
    Car[] public cars;
    mapping(address => Car[]) public carsByOwner;

    function examples() external {
        // oarameters passed in order
        Car memory toyota = Car("Supra", 1990, msg.sender);
        // if parameters are passed as kvp order doesn't matter
        Car memory honda = Car({year: 1991, model: "NSX", owner: msg.sender});

        Car memory tesla; //all properties have default values
        tesla.model = "Tesla";
        tesla.year = 2020;
        tesla.owner = msg.sender;

        cars.push(toyota);
        cars.push(honda);
        cars.push(tesla);

        //Instead of intializing Car in memory we can do this in one line and then saving into state variable
        cars.push(Car("Skyline", 1994, msg.sender));


        //Using storage keyword allow us to modify the state variable cars array thats 
        //and save the result of the manipulation
        Car storage _car = cars[0];
        _car.year = 1999;
        delete _car.owner;
        delete cars[1];
    }
}
