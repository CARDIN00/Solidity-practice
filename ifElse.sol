// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;
//ifElse statement 
contract ifelse{
    function example(uint x) external pure returns(uint){
        if(x <10){
            return 1;
        }
        else if(x < 20){
            return 2;
        }
        else{
            return 3;
        }
    }

}