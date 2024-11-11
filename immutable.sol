// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;
//Immutability
// we can give the value at the time of deployment and cant be channged.
// can pss the value in both constructor and the function
// has more cost than "constant:"

contract Immutable{
   // done mannually
   // address public  immutable owner  =0x78731D3Ca6b7E34aC0F824c42a7cC18A495cabaB;

   // through constructor
   address public  immutable owner;

   constructor(address _owner){
    owner =_owner;
   }

   


}