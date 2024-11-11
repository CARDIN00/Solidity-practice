// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;
// throw an error in the contract to save gas.
// require , revert, assert
// gas refund, state updates are reverted
contract Error {
    function testRequire(uint i) public pure{// require is used for access contol.
    require (i<=10, "i >10");//check if the i is <10 otherwise THROW ERROR i>10.
    //code
    }
    function testRevert(uint i) public pure{
        if(i> 10){
            revert("i>10");
        }
    }

    uint public num =123;
    function testAssert()public view{// assert is for statement that is always true.
    // if the statement is not true then there is an error in the code.
    assert(num ==123);

    }
}