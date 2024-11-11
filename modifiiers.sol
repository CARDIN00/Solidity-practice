// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;
//function modifiers, allows to re-use the code
contract FunctionModifier{
    bool public paused;
    uint public count;
//basic
    function setPause(bool _paused) external {
        paused = _paused;
    }

    modifier WhennotPaused(){
        require(!paused,"paused");
        _;
    }

    function inc() external WhennotPaused{// we have called the ,modifer here
        //require(!paused , "paused");
        count +=1;
    }

    function dec() external WhennotPaused{
        //require(!paused,"paused");
        count -=1;

    }

//input

    modifier cap(uint _x){
        require(_x<100,"x>100");
        _;
    }
    function incBy(uint _x)external WhennotPaused cap(_x){
        //require(_x<100,"x>100");
        count +=1;
    }


//sandwich the function
    modifier sandwich(){
        count +=10;
        _;

        count *=2;
    }
    function foo() external sandwich{
        count +=1;
    }

}