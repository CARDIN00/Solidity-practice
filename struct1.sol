// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;
//structure
contract Structs{
    struct Car{
        string model;
        uint year;
        address owner;
    }

    Car public  car;
    Car[] public cars;// array to store the cars details.
    mapping(address => Car[]) public carByOwner;

    function examples() external {
        //three ways to initialize a struct
        Car memory toyota =Car("Toyota", 1990,msg.sender);
        Car memory Lambo = Car({model : "lambo", year: 1980, owner:msg.sender});
        Car memory tesla;
        tesla.model ="Tesla";
        tesla.year= 2010;
        tesla.owner = msg.sender;

        cars.push(toyota);
        cars.push(Lambo);
        cars.push(tesla);

        cars.push(Car("Ferrari",2020,msg.sender));// push new one into array 
// update from struct
        Car memory _car =cars[0];
        _car.year =1999;

        //reset the feild
        delete _car.owner;
        //reset all the data
        delete cars[1];
        



    }
}