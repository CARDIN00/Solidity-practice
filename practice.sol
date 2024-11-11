// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;
//constructors
// contract Constructor{
//     address public owner;
//     uint public x;
//     constructor(uint _x) {
//         owner =msg.sender;// set the owner to the account that deploys this contract
//         x= _x;
//     }
// }


//state variable 
//global variable
// function modifier 
// function
// error handling

// here we make a app where the ownership of the contract is changed to new owner.
contract Ownable{
    address public owner;
    constructor(){
        owner = msg.sender;
    }

    modifier onlyowner() {
        require(msg.sender==owner, "not owner");// if msg.sender is not owner then throw error.
        _;
    }

    function setowner(address newOwner)external onlyowner{// this function is for the current owner to appoint the new owner
        require(newOwner !=address(0),"invalid address");//if the address is null then throw error
        owner =newOwner;
    }

    function onlyOwnercanCall()external onlyowner{
        
    }

    function anyoneCanCall()external{
        
    }
}