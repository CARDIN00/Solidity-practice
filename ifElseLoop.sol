// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;
//for and while loop
contract forAndWhileloops {
    function loops() external pure{
        for (uint i=0;i<10;i++){
            if(i==3){
                continue ;// this will skip this iteration of the loop.
            }
            if(i==5){
                break;// thjis loop will break at i == 5. bence only runnig till i=4.
            }
        }
    }

    function Sum(uint n)external pure returns(uint){//this is the funciton for returns the sum till n.
        uint sum;
        for(uint i=0;i<n;i++){
            sum +=i;
        }
        return sum;
    }
}