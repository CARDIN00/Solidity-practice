// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;
//build counter.
contract counter{
    uint public count;// count value here is 0 by default.
    function incremen() external {
        count += 1;
    }

    function decrement() external{
        count -=1;

    }
}