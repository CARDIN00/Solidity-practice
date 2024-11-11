// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;
//auction samrt contract
// auctionoerr -> if(auction successful) -> the highest paying bid will be transferred to the account of the auctioneer
// auctioneer can emergency end the auction.(will hbe unsuccessful) all the bids will go back to the bidders
// highest bid
// highest payable bid = MIN((current bid+ increment) , bids[highst bidder])
// current bid =3 : : highest bid = 5: : then the payble bid will be 3+1 =4 (not 5)
// min bid increment

contract Auction{
    address payable  public auctioneer;
    uint public startblock; // start time 
    uint public endblock; // end time

    enum auction_state{startes, running , ended, cancelled}
    auction_state public auctionstate;

    uint public highestBid;
    uint public highestPayaleBid;
    uint public bidIncrement;

    address payable  public highestBidder;

    mapping(address => uint) public bids;// mapping for bids of each bidder

    constructor(){
        auctioneer = payable(msg.sender);
        auctionstate = auction_state.running;
        startblock =block.number;
        endblock =startblock +240;
    }


    modifier notOwner(){
        require(msg.sender != auctioneer,"owner can not bid");
        _;
    }
    modifier Owner(){
        require(msg.sender == auctioneer,"owner can not bid");
        _;
    } 

    modifier Started(){
        require(block.number> startblock);
        _;
    }
     modifier BeforeEnded(){
        require(block.number< endblock);
        _;
    }
    
    modifier Ended(){
        require(block.number== endblock);
        _;
    }

    function EndlAuc() public Owner{// to cancel the auction
        auctionstate = auction_state.ended;
    }

    function CancelAuc() public Owner{// to cancel the auction
        auctionstate = auction_state.cancelled;
    }

    

    function min(uint a, uint b) pure private returns (uint){// function to find the min in two inpute
        if (a<=b)
        return a;

        else return b;
    }



    
    function bid() payable  public notOwner Started BeforeEnded {
        require(auctionstate == auction_state.running);// state should be running.
        require(msg.value>= 1 ether);// pay the min bid in case of first bid

        uint currentBid =bids[msg.sender] +msg.value;

        require(currentBid > highestPayaleBid);
        bids[msg.sender]= currentBid;// current bid is updated 

        if(currentBid < bids[highestBidder]){
            highestPayaleBid =min(currentBid + bidIncrement, bids[highestBidder]);
        }
        else{
            highestPayaleBid = min(currentBid, bids[highestBidder]+bidIncrement);
            highestBidder = payable(msg.sender);
        }
    }

    function finalizedAuction()  public {// can be accessed by : : Auctioneer, : : Bidder
        require(auctionstate == auction_state.cancelled || auctionstate == auction_state.ended||block.number> endblock);
        require(msg.sender == auctioneer||  bids[msg.sender]> 0);// condition to access the contract to get the money

        address payable   recipient;
        uint value;

        if(auctionstate == auction_state.cancelled){
            recipient = payable(msg.sender);
            value = bids[msg.sender];
        }
        else{
            if(msg.sender == auctioneer){
                recipient = auctioneer;
                value = highestPayaleBid;
            }
            else{
                if(msg.sender == highestBidder){
                    recipient = highestBidder;
                    value = bids[highestBidder] - highestPayaleBid;
                }
                else{
                    recipient =payable (msg.sender);
                    value = bids[msg.sender];
                }
            }
        }
        bids[msg.sender] = 0;// the person who has transacted, his account will get reset

        recipient.transfer(value);
    }
}
