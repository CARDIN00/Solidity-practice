// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;
// lottery smart contract
// manager -> one who will deploy the contract,   cont enter the lottery 
// pick the winner(contract balance),   transfer the prize,   reset the lottery

//players: enter the lottery(pay minimum amount to enter),  can only enter once


// to generate a smaller random number modular it with the player array length.
contract Lottery{
    address public manager;
    address payable[] public players;

    constructor(){
        manager = msg.sender;
    }

    function alreadyentered() view private returns(bool){
        for(uint i=0; i<players.length;i++){
            if(players[i]== msg.sender)
            return true;
        }
        return false;
    }

    function enter() payable  public{
        require(msg.sender != manager, "manager can not enter");
        require(alreadyentered() == false," Player registered Once");
        require(msg.value>= 1 ether,"Minimum amount must be paid");

        players.push(payable (msg.sender));

    }

    function random() private  view returns(uint){
       return uint(sha256(abi.encodePacked(block.prevrandao,block.number,players)));
    }

    function pickWinner() public {
        require(msg.sender== manager, "Only manager picks the winner");
        uint index = random()%players.length;// winnner index
        address contractAddress = address(this);
        players[index].transfer(contractAddress.balance);

        players = new address payable[](0);// reset the values
    }

    function getPlayers() view public returns (address payable[] memory){
        return players;
    }

}