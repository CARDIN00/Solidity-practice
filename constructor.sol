// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;
//constructor{ special function}
// only one for 1 contract
// first funciton to be called while deploying the contract
//set owner


contract Constructor{
    uint public age;
    address public owner;
    string public name;
    
    constructor(uint _age,string memory _name,address _owner){
        age =_age;
        owner = _owner;
        name = _name;

    }
}

