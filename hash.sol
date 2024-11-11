// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;
//  inbuilt cryptographic hash functins
// same hash for same data
//used in contract signature
// generate unique ID

// 2 ways to convert the data into bytes 1:-> ENCODE  : : 2:-> ENCODEPACKED: return defferent different byted of data .
// the encoded bytes willgo to the hash functions.
contract HashFuncitons{

    // three different hash funcitions 
    function hashkecca256(uint _x, string memory name, address _add) public pure returns(bytes32){
        return keccak256(abi.encodePacked(_x,name,_add));
    }

    function hashSha256(uint _x, string memory name, address _add) public pure returns(bytes32){
        return sha256(abi.encodePacked(_x,name,_add));
    }

    function hashRipemd160(uint _x, string memory name, address _add) public pure returns(bytes20){
        return ripemd160(abi.encodePacked(_x,name,_add));
    }
}