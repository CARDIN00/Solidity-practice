// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;
// mapping, advanced mapping
// from employ if , get other info

contract Mapping{// we can declare the mapping only on contract level
   mapping(uint =>string) public employId;


   function setIds() public {
    employId[31]= "gaurav";
    employId[27]="aman";
    employId[33]=" karan";
    employId[25]= "random";

   }

    function getId(uint _id) public view returns(string memory){
    
       return employId[_id];
   }
}
