// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;
//mapping(for efficient lookups
// set , get ,delete

// mentain the relation bw courese if and name
contract Mapping{
    mapping(uint =>string) public courseDetails;

    function setValue(uint courseId,string memory coursename) public {
        courseDetails[courseId] =coursename; 
    }

}