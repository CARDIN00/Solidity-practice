// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;
// Events{ neither change nor access. only long into the blockchain.}
contract Events{
    // address has value "x" in it.
    event  balance(address account, string message, uint val);

    function setData(uint _val) public {
        emit balance(msg.sender, "has value", _val);
    }
}

contract chatApp{// creating DAAP.
    event chat(address indexed _from, address _to, string message);// one event can create only 3 indexings

    function sendMessage(address to_, string memory message_) public {
        emit chat(msg.sender, to_, message_);
    }
}