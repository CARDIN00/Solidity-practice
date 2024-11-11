// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;
// send ether from contract to account or another contract
// 3 ways :->

//1: SEND :-> limit of 2300 gas but has inbuilt revert fiunciton
//2: TRANSFER:->we get bool value. LIMIT: 2300gas, Use all the gas if transaction fails 
//3: CALL:-> we define the gas limit. return bool and Byte. Limitation :-> need to use Require to revert the canges

// smart contract to account
// smart contract to samrt contract


// normaly CALL funciton is used for this 
 contract SendETH{
    // for static address
    //address payable public getter = payable(0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2);

    event log(uint value);

    //for user enterd address
    receive() external payable {}

    function checkba() public view returns(uint){
        return address(this).balance;
    }

    // function Send(address payable  getter)public payable  {

    //     emit log(msg.value);

    //     bool sent=getter.send(msg.value);
    //     require(sent,"transaction failed");
    // }

    // function Transfer(address payable  getter)public payable {
    //     getter.transfer(msg.value);
    // }

    function Call(address payable  getter) public payable {//getter.call{value; ___, gas ___ }(" ");
     emit log(msg.value);// to emmit the value of the transmitter eth in log.
    
    (bool sent, )=getter.call{value:msg.value}("");
    require(sent,"failed tran");
        }
 }

 // ont to another contract

 contract GetEth{
    receive()  external payable { }

    function checkba() public view returns(uint){
        return address(this).balance;
    }

 }