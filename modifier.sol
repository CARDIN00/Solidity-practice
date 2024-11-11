// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;
//function modifiers { in case of code duplicacy}
// for code re-usability.
contract Modifier{

    modifier sameCode(){
        for(uint _i=0; _i<10; _i++){

        }
        _;
    }


    function fun1() public pure sameCode returns (string memory){
        // for(uint _i=0; _i<10; _i++){
            
        // }
        return "fun1 says hi";
    }
    function fun2() public pure sameCode returns(uint _x){
        // for(uint _i=0; _i<10; _i++){
            
        // }
        _x=20;
    }
    function fun3() public view sameCode returns (address){
        // for(uint _i=0; _i<10; _i++){
            
        // }
        return msg.sender;
    }
}
