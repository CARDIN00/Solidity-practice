// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;
//Fallback and Recieve

//Fallback: called when non existent function is called in the contract
// required to mark external
// has no name
//has no arguments
// can not return anything
// can be defined one per contract
// if not marked payable it will throw exception when recieves the ether.
// Main use is to directly send ETH to the contract
contract Fallback_recieve{

    event log(string _fun, address _sender, uint _val, bytes _data);// event to store the data at a lower gas price

    fallback() external payable {
        emit log("fallback",msg.sender, msg.value,msg.data);
     }//{ DATA + ETHER} 

    receive() external   payable {
         emit log("recieve",msg.sender, msg.value,"");//  there is no data in "recieve" so we leave an empty space.
     }//{only ETHER}

    function getBal() public view returns (uint){
        return address(this).balance; 
    }
        
        
}