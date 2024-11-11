// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;
// difference bw wiew and pure function
contract ViewandPureFunctions {
    uint public num;

    function viewFunc() external view returns (uint){
        return num; // this function reads from the state fvariable or block chain.
    }

    function PureFunc() external pure returns (uint){
        return 1; // in "pure" function here, it does not read from the block chain.
    }
}