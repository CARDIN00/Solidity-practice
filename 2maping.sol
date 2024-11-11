// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;
//iterable mapping(we need to keep track of all the keys in the mapping)
contract Iterablemapping{
    mapping(address =>uint) public balance;
    mapping(address=>bool)public inserted;// keeps track if the key is insertd.
    address[] public keys;// array of address named keys

    function set(address _key, uint val)external{// set the balance of mapping balances
       balance[_key]= val;
       if(!inserted[_key]){
        inserted[_key]=  true;
        keys.push(_key);
       }
    }
   //length of the key array
   function getSize() external view returns(uint){
    return keys.length;
   } 

   //values in the mapping
   function first() external view returns(uint){// first value in balance
    return  balance[keys[0]];
   }
    function last() external view returns(uint){//last value in balances 
        return balance[keys[keys.length-1]];
    }
    function get(uint i)external view returns(uint){
        return balance[keys[i]];
    }
}