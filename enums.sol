// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;
// Enums{user defined data type} for having multiple choices
//0 -> pending
//1 ->shift  
//2 ->accept
//3 ->reject
//4 ->cancel
contract Enums{
     enum Status{
        Pending,
        Shift,
        Accepted,
        Rejectd,
        Cancel
     }
     Status public status;// bool variable staus

     function getStatus() public view returns(Status){
        return status;
     }
      
     function setaStatus(Status _status) public{
        status = _status;
     }  

     function Rej()public{
        status = Status.Rejectd;
     }

     function Reset() public {
        delete status;
     }

 }