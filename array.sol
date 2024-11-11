// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;
//array- dynamic and fixed
// creating array in memory
// insert(push), get, update, pop , length
// returning array from funciton
contract array{
    uint[] public nums =[1,2,3];//dynamic
    uint[5] public numsfixed =[1,2,3,4,5];// array of fixed size of 5

    function example() external{
        nums.push(4);// [1,2,3,4]
        nums[1]; // this get the first index element from the array. 
        nums[2]= 777;// this updates the 2nd index element in the array to 777
        delete nums[1];// delete the 1st index element and reset it to default value
        nums.pop();//pop last elemn
        nums.length;//get length

        //array in memory
       // uint[] memory arr = new uint[](5);// array in memory is fixed size.
    }

    function returnarray() external view returns(uint[] memory){
        return nums;
    }
}