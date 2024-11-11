// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;
// mapping, advanced mapping
// every detail from adrress{name, age,place,balance}

struct doner_detail{
    string name;
    uint age;
    string Address;
    uint donation;
}
contract advMapping{
    mapping(address=> doner_detail) public acc_info;

    function setDetail(string memory _name,uint _age, string memory _address, uint _donation) public {

        acc_info[msg.sender]= doner_detail(_name, _age, _address,   acc_info[msg.sender].donation+_donation);//take info from the doner.
//  {acc_info[msg.sender].donation+_donation} here we add the earlier donation to new donations.
    }
}
