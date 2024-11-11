// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;
//Payable
contract A{

    address payable public owner = payable(msg.sender);

    constructor() payable {
        
    }
    function getEth() payable public {

    }

    function getBal() public view returns (uint){
        return address(this).balance; //balance of "this contract" address.
    }
}
