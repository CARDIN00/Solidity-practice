// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;
// multiple inheritance
contract A{
    uint public a;
    constructor(){
        a==100;
    }
    function funA() public {
        a=10;
    }
}

contract B{
    uint public b;
    constructor(){
        b=100;
    }

    function funB() public {
        b=10;
    }
}

contract C is A,B{
    // if A and B have same properties but different values then the value of B will dominate the contract.
}