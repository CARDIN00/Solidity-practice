// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;
//Inheritance{ virtual , overwrite}
contract A{

    uint public x=100;
    address public owner = msg.sender;


    function fun1() public pure returns (string memory){
        return " i m in contract A";
    }
    function fun2() public pure returns (string memory){
        return " i m in contract A";
    }
    function fun3() public pure virtual returns (string memory){
        return " i m in contract A";
    }
    function fun4() public pure virtual returns (string memory){
        return " i m in contract A";
    }
}


contract B is A{// B is the child of A.
    // chage only 2 functions. 
    //we used the keyword VIRTUAL in the functions in contact A .
    // we used OVERRIDE in contract B in those function to change the content
    function fun3() public pure override returns (string memory){
        return " i m in contract B";
    }
    function fun4() public pure virtual override  returns (string memory){
        return " i m in contract B";
    }
}

contract C is B{
    function fun4() public pure override  returns (string memory){
        return " i m in contract C";
    }
}