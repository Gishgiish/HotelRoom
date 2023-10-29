//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract HotelRoom {
    //vacant
    //occupied
    enum Statuses { 
        Vacant, 
        Occupied 
        }
    Statuses public currentStatus;

    //Log events. can be alerts
    event Occupy(address _occupant, uint _value);

    //hotel Owner address
    address payable public owner;

    constructor() {
        owner = payable(msg.sender);
        currentStatus = Statuses.Vacant;
    }

    modifier onlyWhileVacant {
         //check status
        require(currentStatus == Statuses.Vacant, "Currently Occupied!");
        _;
        
    }

    modifier costs(uint _amount) {
        //check price. 
        require(msg.value >= _amount, "Not enough ether provided!");
        _;
        
    }

    //book hotel room and pay the owner of hotel. The 2 ether is an example of amount
    function book() public payable onlyWhileVacant costs(2 ether) {       
       
        current Status = Statuses.Occupied;

        (bool, sent, bytes memory data) = owner.call{value: msg.value}("");
        require(true);

        emit Occupy(msg.sender, msg.value);

    }
}