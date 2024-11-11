// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;
//visibility of functions
// private , internal, external, public
// external ones cant be called inside the contract.
contract A{
    
    uint private x=10;// only within the contract
    uint internal y=100;// within the contract and the derived contract
    uint public z= 1000;// everywhere

    function check1() private pure returns(string memory){
        return "private";
    }

    function check2() internal pure returns(string memory){
        return "internal";
    }

    function check3() external pure returns (string memory){
        return "external";
    }

    function check4() public  pure returns (string memory){
        return "public";
    }

    // function Checkall() public view returns(uint){
    //     return x;
    // }

    // function Checkall() public view returns(string memory){
    //     return check1();
    // }
}

contract B is A// B is the child contract of A.
{
   string public a= check4();
}


contract C{

    A obj =new A(); //creating object
    uint public a= obj.z();

    function anotherCaller() public view returns(string memory){
        return obj.check3();
    }
}