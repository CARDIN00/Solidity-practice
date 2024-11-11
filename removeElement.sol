// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;
//"remove " an elemnt from an index.
contract RemoveELement{
    uint[] public arr;
    function example() public{
        arr =[1,2,3];
        delete arr[1];//[1,0 ,3]
    }
//[1,2,3,4,5,6](remove arr[2] --> [1,2,4,5,6,6] pop last--> [1,2,4,5,6]
    function remove(uint _index)public {
        require(_index < arr.length, "the index greater than array length");
        
        for(uint i=_index; i<arr.length-1; i++){
            arr[i]= arr[i+1];
        }
        arr.pop();
    }
}