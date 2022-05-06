//Hotel Room Smart Contract 
pragma solidity ^0.6.0; 

contract HotelRoom 
{
    address payable public owner; 
    //'payment' keyword is given to those variables which can actually recieve Ethereum as payment 

    //Keep track for room status booking status 
    enum Statuses { Vaccant, Occupied }
    Statuses currentStatus;

    //Events
    event Occupy(address _occupant, uint _value);

    constructor() public 
    { 
        //user who calls this function / deploys this contract becomes the owner
        owner = msg.sender; 

        currentStatus = Statuses.Vaccant; 
    } 

    //Modifier 
    modifier onlyWhileVaccant 
    {
        //Check status 
        require(currentStatus == Statuses.Vaccant, "Currently occupied !"); 
        _;
    }

    modifier costs (uint _amount)
    {
        //Check price 
        require(msg.value >= _amount, "Not enough Ether provided !");
        _;
    }
     
    //Booking the hotel room > 
    receive() external payable onlyWhileVaccant costs(2 ether)
    {
        currentStatus = Statuses.Occupied;
        //transfering booking fees  / Etthereum to the owner 
        owner.transfer(msg.value); 

        emit Occupy(msg.sender, msg.value);
    }
    //Learnings 
    //Eters - payments 
    //Modifiers
    //Visibility
    //Events
    //Nums
}